# Αρχιτεκτονική Υπολογιστών
___________________________
## Εργαστήριο 1

Σκοπός του τρέχοντος εργαστηρίου είναι η εξοικείωση με το gem5 και τη βιβλιογραφία πάνω στην οποία θα βασιστούμε για την ολοκλήρωση των παραδοτέων.

### Ερωτήματα Πρώτου Μέρους

##### 1. Βασικές παράμετροι του συστήματος

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

##### 2. Επαλήθευση των παραμέτρων ερωτήματος (1)

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

**9.** Number of Memory channels:

```
25: mem_ranges= 0:2147483647
```
Συνολικά δηλαδή έχουμε 2.14GB μνήμης

**10.** Number of Memory ranks per channel:

```
1296: ranks_per_channel=2
```


