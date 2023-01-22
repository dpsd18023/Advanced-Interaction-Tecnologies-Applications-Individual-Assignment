# Lesson: Advanced Interaction Technologies & Applications

### First and Last Name: Γλέζος Γεώργιος
### University Registration Number: dpsd18023
### GitHub Personal Profile: dpsd18023
### Advanced Interaction Tecnologies & Applications Github Personal Repository: https://github.com/dpsd18023/Advanced-Interaction-Tecnologies-Applications-Individual-Assignment

# Introduction

# Summary
 <a href=""></a>
# 1st Deliverable

   <b> 1. Video Capture: </b>
 
   Ξεκίνησα ανοίγοντας και μελετώντας στο Processing το παράδειγμα  <a href="http://learningprocessing.com/examples/chp16/example-16-01-Capture">16-1</a> από το <a href="http://learningprocessing.com/">Learning Processing, 2nd Edition</a>. Μετά από μερικά ‘’Run’’ μου έβγαλε σφάλμα ‘’IllegalStateException: Could not find any devices’’ και έκανα αναζήτηση στο <a href="https://www.google.com/">Google</a>. Η λύση που βρήκα από την σελίδα <a href="discourse.processing.org">discourse.processing.org</a> ήταν να προσθέσω το κομμάτι κώδικα "pipeline:autovideosrc" μέσα στις παρενθέσεις () του ‘’video = new Capture(this, 640, 480);’’
 
![VideoCapture](https://user-images.githubusercontent.com/115796095/199566744-2efd2538-bc14-4663-b793-310a97d1997c.png)



   <b> 2. Recorded video: </b>
 
   Μελέτησα τα παραδείγματα  Example 16-4 και Example 16-5 από το βιβλίο <a href="http://learningprocessing.com/">Learning Processing, 2nd Edition</a>, βρήκα  ένα βίντεο 10'' από το <a href="https://www.youtube.com">YouTube</a>, το κατέβασα από το <a href="https://it.onlinevideoconverter.pro/">onlinevideoconverter</a> και στην συνέχεια το έβαλα στο φάκελο ‘’data’’τον οποίο δημιούργησα μέσα στο φάκελο του project μου.
   Στην ουσία άνοιξα στο processing το “Example 16-4: Display QuickTime movie” από τις βιβλιοθήκες που είχαμε εισάγει στην τάξη και έπαιξα λίγο με τον κώδικα με τη βοήθεια του <a href="https://www.youtube.com/c/TheCodingTrain">The Coding Train</a> ώστε το βίντεο μου να παίζει σε επανάληψη και να μεταβάλει την ταχύτητα αναπαραγωγής του ανάλογα με τη θέση του κέρσορα στον άξονα ‘’X’’ (προς τα αριστερά η ταχύτητα μειώνεται ενώ προς τα δεξιά η ταχύτητα αυξάνεται).
 
![RecordedVideo](https://user-images.githubusercontent.com/115796095/199587063-07d70bbd-899f-452c-885f-edf47b152b90.png)
  
  
  
   <b> 3. QR Code: </b>
   
   Μέσα από το Processing -> Java -> Add Mode… -> Libraries έκανα λήψη της βιβλιοθήκης ‘’QRCode’’ του Daniel Shiffman. 
   Άνοιξα το ‘’Example 15-1: "Hello World" images’’, έφτιαξα το δικό μου QRCode με το GitHub URL μου στο [QR Code Generator](https://www.the-qrcode-generator.com/) και το αποθήκευσα σε μορφή ‘’png’’ στο φάκελο ''data'' που δημιούργησα μέσα στον φάκελο του project μου.
Στη συνέχεια εμπνεύστηκα από το παράδειγμα ‘’QRcode Reader’’ και από την σελίδα [εδώ](https://shiffman.net/p5/qrcode-processing/). Έβαλα τον απαραίτητο κώδικα για να ανοίγει την εικόνα με το QR μου, να κάνει decoding και να ανοίγει αυτόματα το ανάλογο URL.

![QRLib](https://user-images.githubusercontent.com/115796095/199600920-e4920cd6-5acc-4770-95b0-2abdc6bde162.png)
![OpenQR](https://user-images.githubusercontent.com/115796095/199600942-02470fa2-fdd6-4e6a-89f3-d0e4b7f91550.png)
![OpenURL](https://user-images.githubusercontent.com/115796095/199600976-003da81f-8775-4cfb-97c7-64856d667b8c.png)



   <b> 4. QR Code - Camera Read: </b>
   
   Άνοιξα το παράδειγμα ‘’QRcode  Reader’’ στο Processing, πρόσθεσα στο ‘’video = new Capture(this, 640, 480);’’ το "pipeline:autovideosrc"  για να μου αναγνωρίζει την κάμερα και στην συνέχεια άλλαξα το ‘’case 'f':’’ σε ‘’case 'ο':’’ από το Open και αντικατέστησα τον κώδικα που είχε μέσα με το ‘’link(statusMsg);’’ για να μου ανοίγει οποιοδήποτε URL από αποκωδικοποιημένο QRCode που έχουμε σκανάρει.
   
![Scan Decode](https://user-images.githubusercontent.com/115796095/199604691-bf70b8b4-5fa3-46cf-ae7e-2e8bea6bc63b.png)
![OpenUrlWithKey](https://user-images.githubusercontent.com/115796095/199604712-4841eff3-91d8-49f7-86a2-439c8ddcc7dd.png)

   
      
   <b> 5. Augmented Reality: </b>
   
   Μελέτησα το ''My first AR exploration'', τις οδηγίες χρήσης της βιβλιοθήκης NyARToolkit και εγκατάστησα την τελευταία έκδοση της όπως μας ζητήθηκε. Έπειτα, άνοιξα το ''example simpleLite'' στο Processing και προσάρμοσα κατάλληλα τον κώδικα, ώστε με την επιτυχή αναγνώριση από την κάμερα του marker Hiro να εμφανίζεται η εικόνα που επέλεξα.
   
![MyAR](https://user-images.githubusercontent.com/115796095/199611055-91aa71f6-6d4e-4aae-9da9-cc67f15c471d.png)


   

# 2nd Deliverable


# 3rd Deliverable 

  Για το τρίτο παραδοτέο ξεκίνησα κατεβάζοντας και κάνοντας εγκατάσταση της εφαρμογής "reacTIVision vision engine" απο ![εδώ](https://reactivision.sourceforge.net/). Στην ουσία δεν χρειαζόταν κάτι περισσότερο από μια αποσυμπίεση του αρχείου που κατέβασα και ένα κλικ στο "reacTIVision.exe" για να τρέξει η εφαρμογή.

Στη συνέχεια κατέβασα την βιβλιοθήκη "reacTIVision" και την έκανα εγκατάσταση στο processing κάνοντας αποσυμπίεσε και μετακινώντας τον φάκελο "TUIO" στον προορισμό <b>…\Processing\libraries.</b>

Έκανα λήψη και εγκατάσταση της εφαρμογής "TUIO Simulator" όπως και με το "reacTIVision vision engine". (Αποσυμπίεση και άνοιγμα του αρχείου "TuioSimulator.jar").
Αφού άνοιξε το TUIO simulator, πήγα στο Processing και μετά στο παράδειγμα TUIO Demo από το File -> Contributed Libraries -> TUIO -> TuioDemo και πειραματίστηκα με το Simulator και τον κώδικα.

Μετά ξεκίνησα να υλοποιώ το "Image Processing Application" σε ένα νέο αρχείο. Το αποθήκευσα και έφτιαξα μέσα τον φάκελο "data" για να βάλω τις φωτογραφίες που κατέβασα από το ![Google](https://www.google.com/) ώστε να μπορέσω να τις καλέσω από το πρόγραμμα.
Τέλος πήρα μερικά κομμάτια κώδικα από το TUIO Demo και έκανα τις δίκες μου επεμβάσεις σύμφωνα με αυτά που έμαθα παρατηρώντας τον τρόπο λειτουργίας του και μερικά examples από το ![processing.org](https://processing.org/).

Χρησιμοποίησα τα Fiducial…
0 -> για εισαγωγή της εικόνας, μετακίνηση και περιστροφή. (Σου δίνει την αίσθηση ότι κρατάς την εικόνα στα χέρια σου).
1 -> για μεγέθυνση και σμίκρυνση.
2, 3 & 4 -> για φίλτρα RGB. ( 2 Κόκκινο, 3 Πράσινο, 4 Μπλε)
6 -> για αδιαφάνεια.
7 -> για αφαίρεση της φωτεινότητας.

Μέσα στο project υπάρχουν κάποια σχόλια για Background με εικόνα, εισαγωγή δεύτερης εικόνας και ένα εργαλείο περιστροφής της εικόνας που εν τέλει δεν προτίμησα γιατί δίνει μια αίσθηση περιστροφής του τραπεζιού επειδή η περιστροφή γινόταν από το σημείο 0,0 της οθόνης.

Για τα αρχικά βήματα και όσο το project βρίσκεται σε πρώιμα επίπεδα (και δοκίμων) , βολεύει η χρήση του Simulator. Είναι πιο πρακτικό και γρήγορο λόγω καλύτερης και πιο άμεσης απόκρισης στις κινήσεις και μεγαλύτερης ακρίβειας. Δεν κολλάει τόσο και δεν τρώει χρόνο στην αναγνώριση τον fiducials. 
Στην συνέχεια και αφού έχει σχεδόν τελειώσει το κομμάτι με τον κώδικα μπορούμε να προχωρήσουμε στην "προτυποποίηση" και τις δοκιμές με την κάμερα. 
Επίσης με την κάμερα τα πράγματα γίνονται πιο ενδιαφέρον και ένας καλός λόγος είναι η διάδραση.


# Bonus 


# Conclusions


# Sources
