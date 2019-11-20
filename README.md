# Αρχιτεκτονική Υπολογιστών
___________________________
## Εργαστήριο 1

Σκοπός του τρέχοντος εργαστηρίου είναι η εξοικείωση με το gem5 και τη βιβλιογραφία πάνω στην οποία θα βασιστούμε για την ολοκλήρωση των παραδοτέων.

### Ερωτήματα Πρώτου Μέρους

1. Βασικές παράμετροι του συστήματος

|              Arguement              |       Value       |
|:-----------------------------------:|:-----------------:|
|           L1 iCACHE Class:          |    devices.L1I    |
|           L1 dCACHE Class:          |    devices.L1D    |
|          Walk Cache Class:          | devices.WalkCache |
|           L2 Cache Class:           |     devices.L2    |
|              CPU Type:              |      MinorCPU     |
|            CPU Frequency:           |        4GHz       |
|         Number of CPU cores:        |         1         |
|           Type of Memory:           |   DDR3_1600_8x8   |
|      Number of Memory channels:     |         2         |
| Number of Memory ranks per channel: |        None       |
| Physical Memory size:               |        2GB        |

2. Επαλήθευση των παραμέτρων ερωτήματος (1)

Ύστερα από την εκτέλεση του αρχείου `starter_se.py`, δημιουργούνται τα αρχεία `stats.txt`, `config.ini` και `config.json` από τα οποία μπορούμε να επαληθεύσουμε τις παραμέτρους που χρησιμοποιήθηκαν παραπάνω.

