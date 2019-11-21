# Αρχιτεκτονική Υπολογιστών
___________________________
## Εργαστήριο 1

Σκοπός του τρέχοντος εργαστηρίου είναι η εξοικείωση με το gem5 και τη βιβλιογραφία πάνω στην οποία θα βασιστούμε για την ολοκλήρωση των παραδοτέων.

### Ερωτήματα Πρώτου Μέρους

#### 1. Βασικές παράμετροι του συστήματος

|  #  |              Arguement              |       Value       |
|:---:|:-----------------------------------:|:-----------------:|
|  1. |           L1 iCACHE Class:          |    devices.L1I    |
|  2. |           L1 dCACHE Class:          |    devices.L1D    |
|  3. |          Walk Cache Class:          | devices.WalkCache |
|  4. |           L2 Cache Class:           |     devices.L2    |
|  5. |              CPU Type:              |      MinorCPU     |
|  6. |            CPU Frequency:           |        4GHz       |
|  7. |         Number of CPU cores:        |         1         |
|  8. |           Type of Memory:           |   DDR3_1600_8x8   |
|  9. |      Number of Memory channels:     |         2         |
| 10. | Number of Memory ranks per channel: |         2         |
| 11. | Physical Memory size:               |        2GB        |

#### 2. Επαλήθευση των παραμέτρων ερωτήματος (1)

Ύστερα από την εκτέλεση του αρχείου `starter_se.py`, δημιουργούνται τα αρχεία `stats.txt`, `config.ini` και `config.json` από τα οποία μπορούμε να επαληθεύσουμε τις παραμέτρους που χρησιμοποιήθηκαν παραπάνω.


**5.** CPU Type:

```
66: [system.cpu_cluster.cpus]
67: type=MinorCPU
```

**6.** CPU Frequency:

```
58: [system.cpu_cluster.clk_domain]
59: type=SrcClockDomain
60: clock=250
```
Το clock ισούται με 250 (picoseconds), τα οποία με τον τύπο F = 1/T προκύπτουν 4GHz, όπως έχουμε ορίσει παραπάνω.

**7.** Number of CPU cores:

```
117: numThreads=1
```

**9.** Number of Memory channels:



**10.** Number of Memory ranks per channel:

```
1296: ranks_per_channel=2
```

**11.** Physical Memory size:

```
25: mem_ranges= 0:2147483647
```
Συνολικά δηλαδή έχουμε 2.14GB μνήμης

#### 3.

Στα μοντέλα in-order CPUs που χρησιμοποιεί ο gem5 συγκαταλέγονται ο `BaseSimpleCPU` o οποίος χωρίζεται στον `AtomicSimpleCPU` και τον `TimingSimpleCPU`. Μερικές πληροφορίες για αυτούς αναγράφονται παρακάτω.

#### BaseSimpleCPU

Ο BaseSimpleCPU επιτελεί διάφορους σκοπούς:
* Διατηρεί την κατάσταση αρχιτεκτονικής και έχει παρόμοια στατιστικά στα διάφορα μοντέλα SimpleCPU.
* Έχει τη δυνατότητα να ορίζει λειτουργίες (functions) για να ελέγχει για διακοπές (interrupts), να ετοιμάζει ένα αίτημα fetch, ετοιμάζει την ετοιμασία προ-εκτέλεσης (pre-execute setup), διαχειρίζεται τις μετα-εκτέλεσης δραστηριότητες (post-execute actions), και προχωράει τον μετρητή προγράμματος (Program Counter) στην επόμενη εντολή.
* Επιτελεί την ExecContext διεπαφή.

Ο BaseSimpleCPU δεν μπορεί να τρέξει μόνος του. Είναι απαραίτητη η χρήση μίας από τις κλάσεις που κληρονομεί από την BaseSimpleCPU, είτε την AtomicSimpleCPU ή την TimingSimpleCPU.


<p align="center">
  <img src="http://www.gem5.org/docs/html/classAtomicSimpleCPU.png">
</p>


## AtomicSimpleCPU

Η AtomicSimpleCPU είναι η έκδοση της SimpleCPU όπου χρησιμοποιεί προσβάσεις ατομικής μνήμης. Χρησιμοποιεί τις εκτιμήσεις των καθυστερήσεων μεταφοράς από τις ατομικές προσβάσεις, με σκοπό να εκτιμήσει το συνολικό χρόνο πρόσβασης της cache. Ο AtomicSimpleCPU προέρχεται από τον BaseSimpleCPU και επιτελεί λειτουργίες για να διαβάζει και να γράφει στη μνήμη, όπως επίσης να κάνει τικ, το οποίο ορίζει τι συμβαίνει σε κάθε κύκλο CPU. Προσδιορίζει τη θύρα που χρησιμοποιείται για να κλειδώσει στη μνήμη και συνδέει τη CPU στη μνήμη cache.

## TimingSimpleCPU

Ο TimingSimpleCPU είναι η έκδοση του SimpleCPU που χρησιμοποιεί προσβάσεις μνήμης χρονισμού. Αυτό δημιουργεί καθυστερήσεις στις προσβάσεις της ache και περιμένη το σύστημα μνήμης να ανταποκριθεί πριν προχωρήσει παρακάτω. Όπως ο AtomicSimpleCPU, έτσι και ο TimingSimpleCPU προέρχεται από τον BaseSimpleCPU και επιτελεί το ίδιο σετ λειτουργιών. Προσδιορίζει τη θύρα που χρησιμοποιείται για να κλειδώσει στη μνήμη και συνδέει τον CPU στη μνήμη ache. Επίσης, προσδιορίζει τις απαραίτητες λειτουργίες για τη διαχείριση της απόκρισης από τη μνήμη στις προσβάσεις που έχουν σταλεί έξω.
