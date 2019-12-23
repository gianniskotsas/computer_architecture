# Αρχιτεκτονική Υπολογιστών

## Εργαστήριο 3 - Ερωτήματα Πρώτου Μέρους

Σκοπός του τρέχοντος εργαστηρίου είναι η εξοικείωση με το λογισμικό mcpat σε συνδυασμό με τις λειτουργίες του gem5, έτσι ώστε να βρούμε για κάθε πρόγραμμα που υλοποιούμε, την ενεργειακή κατανάλωση στους διάφορους επεξεργαστές που θέλουμε να το τρέξουμε αυτό.

### 1. Dynamic Power και Leakage

Στα αποτελέσματα του McPAT παρατηρούμε δύο συγκεκριμένες παραμέτρους, το `Dynamic Power` και `Leakage`.

#### Dynamic Power

To `Dynamic Power` είναι η ισχύς που καταναλώνει ένας επεξεργαστής κάθε φορά που αλλάζει το κύκλωμά του κατάσταση. Επομένως, είναι μία μεταβλητή τιμή που εξαρτάται αρκετά και από το πρόγραμμα που έχει κληθεί να τρέξει. Πιο συγκεκριμένα, η δυναμική ισχύς αποτελεί την ισχύ που δαπανάται για τη φόρτιση/εκφόρτιση των χωρητικών φορτίων κάθε φορά που το κύκλωμα αλλάζει κατάσταση. Παρατηρώντας τον παρακάτω προσεγγιστικό τύπο, μπορούμε ευκολότερα να δούμε από τι εξαρτάται η δυναμική ισχύς.

![](https://github.com/PoSeiDonTeaM/computer_architecture/blob/master/LAB3/media/P_dynamic_equation.png)

* Το C αποτελεί τη συνολική χωρητικότητα
* Το V είναι η τάση κυκλώματος (V_DD)
* Το f είναι η συχνότητα ρολογιού του επεξεργαστή μας

Επομένως, μπορούμε εύκολα να διακρίνουμε από τι εξαρτάται η δυναμική ισχύς μας.

#### Leakage

Το `Leakage` ή αλλιώς η διαρροή του κυκλώματος αποτελεί τη στατική ισχύ που καταναλώνεται λόγω διαρροής ρεύματος μέσα στο transistor. Αυτό προκύπτει από τις ατέλειες που έχουν κατά την κατασκευή τους. Επίσης το leakage χωρίζεται σε διάφορες κατηγορίες. Το `Subthreshold leakage` και το `Gate leakage`. 

To **Subthreshold leakage** παρατηρείται όταν είναι απενεργοποιημένο το transistor (κατάσταση off) που σημαίνει ότι ακόμα και όταν είναι αδρανές, μπορεί και καταναλώνει ενέργεια. Συγκεκριμένα, το transistor επιτρέπει τη διαρροή μικρού μεγέθους συνήθως ρεύματος μεταξύ του source και του drain και έτσι προκύπτει η προαναφερθούσα κατανάλωση ενέργειας.

Το **Gate leakage** αποτελεί το ρεύμα το οποίο διαρρέει από το terminal της πύλης του transistor.

### 2. Energy Efficiency

Έχουμε ένα σύστημα το οποίο τροφοδοτείται από μπαταρία συγκεκριμένης χωρητικότητας. Έχουμε στη διάθεσή μας να επιλέξουμε μεταξύ δύο επεξεργαστών. Ο ένας από αυτούς καταναλώνει **5 Watts** (Α), ενώ ο άλλος **40 Watts** (Β). Το ερώτημα που καλούμαστε να απαντήσουμε είναι αν στην περίπτωση που έχουμε μία μπαταρία με μία Χ χωρητικότητα, ποιος επεξεργαστής θα καταναλώνει περισσότερη ενέργεια και ποια επιλογή συμφέρει περισσότερο από άποψη energy efficiency. 

Η απάντηση φαντάζει να είναι απλή γιατί κατευθείαν κάποιος θα μπορούσε να πει ότι ο επεξεργαστής με τα 40 Watts καταναλώνει περισσότερη ενέργεια. Στην πραγματικότητα, ο "Β" καταναλώνει περισσότερη **ισχύ** και όχι ενέργεια. Για να υπολογίσουμε την ενεργειακή κατανάλωση χρειαζόμαστε και την παράμετρο του χρόνου για την οποία χρειάστηκε ο επεξεργαστής να τρέξει το εν λόγω πρόγραμμα. Για παράδειγμα, αν ο "Β" επεξεργαστής κάνει 5 λεπτά (300 δευτερόλεπτα) για να τρέξει το πρόγραμμα, θα καταναλώσει 12,000 J, ενώ αν ο επεξεργαστής "Α" χρειάζεται μία ώρα (3,600 δευτερόλεπτα) για να τρέξει το πρόγραμμα, τότε θα καταναλώσει 18,000 J, δραματικά περισσότερο από τον επεξεργαστή "Β". 

Επομένως, σύμφωνα με τα παραπάνω, για να μπορούμε να βγάλουμε πόρισμα για την ενεργειακή κατανάλωση χρειαζόμαστε μόνο την ισχύ που καταναλώνει ο επεξεργαστής και το χρόνο που τρέχει το πρόγραμμα. Λάθος. Πρέπει να λαμβάνουμε υπόψη μας και το Total Leakage που αναφέραμε παραπάνω. Γιατί, ακόμα και αν ο επεξεργαστής μας τρέχει πολύ πιο γρήγορα το πρόγραμμα, αν το total leakage του είναι συγκριτικά μεγαλύτερο από τον άλλο επεξεργαστή, τότε η ενεργειακή του κατανάλωση αυξάνεται επίσης δραματικά και πάντα όταν σχεδιάζουμε και επιλέγουμε το harware που πρέπει να χρησιμοποιήσουμε, πρέπει να τα λαμβάνουμε όλα αυτά υπόψη.

### 3. Σύγκριση Xeon και ARM A9

Το συγκεκριμένο ερώτημα απαντάται εν μέρει και στην απάντηση του ερωτήματος 2, καθώς αποτελεί παρόμοια φιλοσοφία. Έχουμε κάνει την υπόθεση ότι ο επεξεργαστής επεξεργαστής Xeon μπορεί να τρέξει το ίδιο πρόγραμμα με τον επεξεργαστή ARM A9 έως και 40 φορές γρηγορότερα. Ακόμα και με αυτή την υπόθεση καλούμαστε να εξετάσουμε αν ο Xeon είναι ενεργειακά αποδοτικότερος από τον ARM A9. Παρακάτω παρατηρούμε τα benchmarks που έχουν αποτυπωθεί στην οθόνη μας για τους δύο επεξεργαστές.

#### Xeon:

~~~
Processor:
  Area = 410.507 mm^2
  Peak Power = 134.938 W
  Total Leakage = 36.8319 W
  Peak Dynamic = 98.1063 W
  Subthreshold Leakage = 35.1632 W
  Subthreshold Leakage with power gating = 16.3977 W
  Gate Leakage = 1.66871 W
  Runtime Dynamic = 72.9199 W
~~~

#### ARM A9:

~~~
Processor:
  Area = 5.39698 mm^2
  Peak Power = 1.74189 W
  Total Leakage = 0.108687 W
  Peak Dynamic = 1.6332 W
  Subthreshold Leakage = 0.0523094 W
  Gate Leakage = 0.0563774 W
  Runtime Dynamic = 2.96053 W
~~~

Η διαφορά στην κατανάλωση ισχύος είναι δραματικά μεγαλύτερη στον Xeon επεξεργαστή. Αυτό όμως που παίζει στην παρούσα περίπτωση το μεγαλύτερο ρόλο στο energy efficiency είναι το Total Leakage του Xeon, το οποίο υπερισχύει. Συγκεκριμένα, το Total Leakage του Xeon είναι 21 φορές μεγαλύτερο από το Peak Power του ARM A9 που σημαίνει ότι ακόμα και αν το κύκλωμα είναι σε λειτουργία "OFF" καταναλώνει 21 φορές παραπάνω ενέργεια από τον ARM A9 όσο αυτός είναι σε κανονική λειτουργία. Σε καμία περίπτωση λοιπόν δεν μπορεί να είναι ενεργειακά πιο αποδοτικός ο Xeon, ακόμα και αν είναι 40 φορές γρηγορότερος.