FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
? Veritrope.com
Chrome URLs List to OmniFocus
VERSION 1.1
June 15, 2014

// UPDATE NOTICES
    ** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
    If this AppleScript was useful to you, please take a second to show your love here: 
    http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
    http://veritrope.com/code/chrome-tab-list-to-omnifocus/

    BASED ON THIS SAFARI/EVERNOTE SCRIPT:
    http://veritrope.com/code/export-all-safari-tabs-to-evernote/

    �AND THIS SAFARI/OMNIFOCUS SCRIPT:
    http://veritrope.com/code/safari-tab-list-to-omnifocus/

    WITH GREAT THANKS TO BRETT TERPSTRA, ZETTT, AND GORDON!

// REQUIREMENTS
    More details on the script information page.

// CHANGELOG
    1.10    FIX FOR DATE STAMP + CHANGE IN OF'S APPLESCRIPT, ADDED NOTIFICATION CENTER, REMOVED LOGGING, ADDED COMMENTS
    1.00    INITIAL RELEASE

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

     � 	 		� 
%�   V e r i t r o p e . c o m 
 C h r o m e   U R L s   L i s t   t o   O m n i F o c u s 
 V E R S I O N   1 . 1 
 J u n e   1 5 ,   2 0 1 4 
 
 / /   U P D A T E   N O T I C E S 
         * *   F o l l o w   @ V e r i t r o p e   o n   T w i t t e r ,   F a c e b o o k ,   G o o g l e   P l u s ,   a n d   A D N   f o r   U p d a t e   N o t i c e s !   * * 
 
 / /   S U P P O R T   V E R I T R O P E ! 
         I f   t h i s   A p p l e S c r i p t   w a s   u s e f u l   t o   y o u ,   p l e a s e   t a k e   a   s e c o n d   t o   s h o w   y o u r   l o v e   h e r e :   
         h t t p : / / v e r i t r o p e . c o m / s u p p o r t 
 
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E 
         h t t p : / / v e r i t r o p e . c o m / c o d e / c h r o m e - t a b - l i s t - t o - o m n i f o c u s / 
 
         B A S E D   O N   T H I S   S A F A R I / E V E R N O T E   S C R I P T : 
         h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - s a f a r i - t a b s - t o - e v e r n o t e / 
 
         & A N D   T H I S   S A F A R I / O M N I F O C U S   S C R I P T : 
         h t t p : / / v e r i t r o p e . c o m / c o d e / s a f a r i - t a b - l i s t - t o - o m n i f o c u s / 
 
         W I T H   G R E A T   T H A N K S   T O   B R E T T   T E R P S T R A ,   Z E T T T ,   A N D   G O R D O N ! 
 
 / /   R E Q U I R E M E N T S 
         M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e . 
 
 / /   C H A N G E L O G 
         1 . 1 0         F I X   F O R   D A T E   S T A M P   +   C H A N G E   I N   O F ' S   A P P L E S C R I P T ,   A D D E D   N O T I F I C A T I O N   C E N T E R ,   R E M O V E D   L O G G I N G ,   A D D E D   C O M M E N T S 
         1 . 0 0         I N I T I A L   R E L E A S E 
 
 / /   T E R M S   O F   U S E : 
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .   
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A . 
 
   
  
 l     ��������  ��  ��        l      ��  ��    � � 
======================================
// OTHER PROPERTIES (USE CAUTION WHEN CHANGING)
======================================
     �      
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   ( U S E   C A U T I O N   W H E N   C H A N G I N G ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��     RESET     �   
 R E S E T      l     ����  r         J     ����    o      ���� 0 urllist urlList��  ��        l    ����  r       !   m    ����   ! o      ���� 0 
currenttab 
currentTab��  ��     " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & g a 
======================================
// MAIN PROGRAM 
======================================
    ' � ( ( �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 %  ) * ) l     �� + ,��   +  SET DATE STAMP    , � - -  S E T   D A T E   S T A M P *  . / . l  	  0���� 0 r   	  1 2 1 l  	  3���� 3 c   	  4 5 4 l  	  6���� 6 l  	  7���� 7 I  	 ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   5 m    ��
�� 
TEXT��  ��   2 l      8���� 8 o      ���� 0 	datestamp 	dateStamp��  ��  ��  ��   /  9 : 9 l    ;���� ; r     < = < b     > ? > m     @ @ � A A : U R L   L i s t   f r o m   C h r o m e   T a b s   o n   ? l    B���� B o    ���� 0 	datestamp 	dateStamp��  ��   = o      ���� 0 	notetitle 	noteTitle��  ��   :  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G ( "PROCESSING FRONTMOST CHROME WINDOW    H � I I D P R O C E S S I N G   F R O N T M O S T   C H R O M E   W I N D O W F  J K J l   � L���� L O    � M N M k    � O O  P Q P l   ��������  ��  ��   Q  R S R r    # T U T l   ! V���� V 4   !�� W
�� 
cwin W m     ���� ��  ��   U o      ���� 0 chromewindow chromeWindow S  X Y X r   $ - Z [ Z l  $ + \���� \ I  $ +�� ]��
�� .corecnte****       **** ] l  $ ' ^���� ^ n   $ ' _ ` _ 2  % '��
�� 
CrTb ` o   $ %���� 0 chromewindow chromeWindow��  ��  ��  ��  ��   [ o      ���� 0 tabcount tabCount Y  a b a r   . 1 c d c m   . /����   d o      ���� 0 successcount successCount b  e f e l  2 2��������  ��  ��   f  g�� g Q   2 � h i�� h X   5 � j�� k j k   G � l l  m n m r   G L o p o [   G J q r q o   G H���� 0 
currenttab 
currentTab r m   H I����  p o      ���� 0 
currenttab 
currentTab n  s t s l  M M��������  ��  ��   t  u v u l  M M�� w x��   w  GET TAB INFO    x � y y  G E T   T A B   I N F O v  z { z r   M V | } | l  M R ~���� ~ n   M R  �  1   N R��
�� 
pnam � o   M N���� 0 t  ��  ��   } o      ���� 0 tabtitle tabTitle {  � � � r   W ` � � � l  W \ ����� � n   W \ � � � 1   X \��
�� 
URL  � o   W X���� 0 t  ��  ��   � o      ���� 0 taburl tabURL �  � � � l  a a��������  ��  ��   �  � � � Z   a � � ��� � � >  a d � � � o   a b���� 0 
currenttab 
currentTab � o   b c���� 0 tabcount tabCount � r   g ~ � � � l  g z ����� � b   g z � � � b   g v � � � b   g r � � � b   g n � � � o   g j���� 0 tabtitle tabTitle � o   j m��
�� 
ret  � o   n q���� 0 taburl tabURL � o   r u��
�� 
ret  � o   v y��
�� 
ret ��  ��   � o      ���� 0 tabinfo tabInfo��   � k   � � � �  � � � l  � ��� � ���   � - ' don't output double return on last tab    � � � � N   d o n ' t   o u t p u t   d o u b l e   r e t u r n   o n   l a s t   t a b �  ��� � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � o   � ����� 0 tabtitle tabTitle � o   � ���
�� 
ret  � o   � ����� 0 taburl tabURL��  ��   � o      ���� 0 tabinfo tabInfo��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  ADD TO LIST    � � � �  A D D   T O   L I S T �  � � � s   � � � � � o   � ����� 0 tabinfo tabInfo � l      ����� � n       � � �  ;   � � � o   � ����� 0 urllist urlList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  INCREMENT SUCCESS COUNT    � � � � . I N C R E M E N T   S U C C E S S   C O U N T �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ��� 0 successcount successCount � m   � ��~�~ ��  ��   � o      �}�} 0 successcount successCount �  ��| � l  � ��{�z�y�{  �z  �y  �|  �� 0 t   k l  8 ; ��x�w � n   8 ; � � � 2  9 ;�v
�v 
CrTb � o   8 9�u�u 0 chromewindow chromeWindow�x  �w   i R      �t�s�r
�t .ascrerr ****      � ****�s  �r  ��  ��   N m     � ��                                                                                  rimZ  alis    h  Macintosh HD               �R�\H+     �Google Chrome.app                                               d0�x�        ����  	                Applications    �S!�      �xnX       �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   K  � � � l     �q�p�o�q  �p  �o   �  � � � l     �n � ��n   � " MAKE INBOX ITEM IN OMNIFOCUS    � � � � 8 M A K E   I N B O X   I T E M   I N   O M N I F O C U S �  � � � l  � � ��m�l � O   � � � � � I  � ��k�j �
�k .corecrel****      � null�j   � �i � �
�i 
kocl � m   � ��h
�h 
FCit � �g ��f
�g 
prdt � K   � � � � �e � �
�e 
pnam � l  � � ��d�c � o   � ��b�b 0 	notetitle 	noteTitle�d  �c   � �a ��`
�a 
FCno � c   � � � � � o   � ��_�_ 0 urllist urlList � m   � ��^
�^ 
ctxt�`  �f   � n   � � � � � 4  � ��] �
�] 
docu � m   � ��\�\  � m   � � � ��                                                                                  OFOC  alis    X  Macintosh HD               �R�\H+     �OmniFocus.app                                                  �߂��7�        ����  	                Applications    �S!�      �Ѩ	       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �m  �l   �  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � l     �X � ��X   �  NOTIFY RESULTS    � � � �  N O T I F Y   R E S U L T S �  � � � l  � � ��W�V � n  � � � � � I   � ��U ��T�U *0 notification_center notification_Center �  � � � o   � ��S�S 0 successcount successCount �  ��R � o   � ��Q�Q 0 tabcount tabCount�R  �T   �  f   � ��W  �V   �  � � � l     �P�O�N�P  �O  �N   �  � � � l      �M � ��M   � q k 
======================================
// NOTIFICATION SUBROUTINE
======================================
    � � � � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   N O T I F I C A T I O N   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     �L�K�J�L  �K  �J   �  �  � l     �I�I    NOTIFICATION CENTER    � & N O T I F I C A T I O N   C E N T E R  �H i      I      �G�F�G *0 notification_center notification_Center 	 o      �E�E 0 successcount successCount	 
�D
 o      �C�C 0 itemnum itemNum�D  �F   k     o  r      c      l    �B�A o     �@�@ 0 successcount successCount�B  �A   m    �?
�? 
nmbr o      �>�> 0 plural_test Plural_Test  l   �=�<�;�=  �<  �;    Z    c�: =   	 o    �9�9 0 plural_test Plural_Test m    �8�8�� k      I   �7 
�7 .sysonotfnull��� ��� TEXT m    !! �"" " N o   T a b s   E x p o r t e d !  �6#$
�6 
appr# m    %% �&& : S e n d   C h r o m e   T a b s   t o   O m n i F o c u s$ �5'�4
�5 
subt' m    (( �)) %�   V e r i t r o p e . c o m�4   *�3* l   �2�1�0�2  �1  �0  �3   +,+ =   -.- o    �/�/ 0 plural_test Plural_Test. m    �.�.  , /0/ k     +11 232 I    )�-45
�- .sysonotfnull��� ��� TEXT4 m     !66 �77 " N o   T a b s   E x p o r t e d !5 �,89
�, 
appr8 m   " #:: �;; : S e n d   C h r o m e   T a b s   t o   O m n i F o c u s9 �+<�*
�+ 
subt< m   $ %== �>> %�   V e r i t r o p e . c o m�*  3 ?�)? l  * *�(�'�&�(  �'  �&  �)  0 @A@ =  . 1BCB o   . /�%�% 0 plural_test Plural_TestC m   / 0�$�$ A DED k   4 CFF GHG I  4 A�#IJ
�# .sysonotfnull��� ��� TEXTI b   4 9KLK b   4 7MNM m   4 5OO �PP , S u c c e s s f u l l y   E x p o r t e d  N o   5 6�"�" 0 itemnum itemNumL l 	 7 8Q�!� Q m   7 8RR �SS "   T a b   t o   O m n i F o c u s�!  �   J �TU
� 
apprT m   : ;VV �WW : S e n d   C h r o m e   T a b s   t o   O m n i F o c u sU �X�
� 
subtX m   < =YY �ZZ %�   V e r i t r o p e . c o m�  H [�[ l  B B����  �  �  �  E \]\ ?  F I^_^ o   F G�� 0 plural_test Plural_Test_ m   G H�� ] `�` I  L _�ab
� .sysonotfnull��� ��� TEXTa b   L Scdc b   L Oefe m   L Mgg �hh , S u c c e s s f u l l y   E x p o r t e d  f o   M N�� 0 itemnum itemNumd l 	 O Ri��i m   O Rjj �kk $   T a b s   t o   O m n i F o c u s�  �  b �lm
� 
apprl m   T Wnn �oo : S e n d   C h r o m e   T a b s   t o   O m n i F o c u sm �p�
� 
subtp m   X [qq �rr %�   V e r i t r o p e . c o m�  �  �:   sts l  d d����  �  �  t uvu r   d iwxw m   d gyy �zz  0x o      �� 0 itemnum itemNumv {�
{ I  j o�	|�
�	 .sysodelanull��� ��� nmbr| m   j k�� �  �
  �H       �}~������������� ���  } ���������������������������������� *0 notification_center notification_Center
�� .aevtoappnull  �   � ****�� 0 urllist urlList�� 0 
currenttab 
currentTab�� 0 	datestamp 	dateStamp�� 0 	notetitle 	noteTitle�� 0 chromewindow chromeWindow�� 0 tabcount tabCount�� 0 successcount successCount�� 0 tabtitle tabTitle�� 0 taburl tabURL�� 0 tabinfo tabInfo��  ��  ��  ��  ~ ������������ *0 notification_center notification_Center�� ����� �  ������ 0 successcount successCount�� 0 itemnum itemNum��  � �������� 0 successcount successCount�� 0 itemnum itemNum�� 0 plural_test Plural_Test� ��!��%��(����6:=ORVYgjnqy��
�� 
nmbr
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj  �����������
�� .aevtoappnull  �   � ****� k     ���  ��  ��  .��  9��  J��  ���  �����  ��  ��  � ���� 0 t  � !���������� @�� ��������������������������������� ������������������� 0 urllist urlList�� 0 
currenttab 
currentTab
�� .misccurdldt    ��� null
�� 
TEXT�� 0 	datestamp 	dateStamp�� 0 	notetitle 	noteTitle
�� 
cwin�� 0 chromewindow chromeWindow
�� 
CrTb
�� .corecnte****       ****�� 0 tabcount tabCount�� 0 successcount successCount
�� 
kocl
�� 
cobj
�� 
pnam�� 0 tabtitle tabTitle
�� 
URL �� 0 taburl tabURL
�� 
ret �� 0 tabinfo tabInfo��  ��  
�� 
docu
�� 
FCit
�� 
prdt
�� 
FCno
�� 
ctxt�� 
�� .corecrel****      � null�� *0 notification_center notification_Center�� �jvE�OjE�O*j �&E�O��%E�O� �*�k/E�O��-j E�OjE�O t n��-[��l kh  �kE�O�a ,E` O�a ,E` O�� _ _ %_ %_ %_ %E` Y _ _ %_ %E` O_ �6GO�kE�OP[OY��W X  hUOa a k/  *�a a a �a �a &a a  UO)��l+  � ����� �  ������������������ ��� � I n b o x   -   c h a d . a r m s t r o n g @ c b s i n t e r a c t i v e . c o m   -   c b s i n t e r a c t i v e . c o m   M a i l  h t t p s : / / m a i l . g o o g l e . c o m / m a i l / u / 0 / ? z x = h j 2 c d j 6 6 x m c # i n b o x  � ��� H L   S e r v e r   L i n k s   -   G o o g l e   S h e e t s  h t t p s : / / d o c s . g o o g l e . c o m / s p r e a d s h e e t s / d / 1 t o K z 3 J p M x x R M o 2 7 N 4 e b p F s C p 3 h W o N z j p h B U V E 8 Y T M z E / e d i t ? p l i = 1 # g i d = 0  � ��� � S o l r   A d m i n  h t t p : / / s o l r 3 9 . p h x 2 . c b s i g . n e t : 8 9 8 3 / s o l r / # / c b s n e w s / d a t a i m p o r t / / d a t a i m p o r t  � ��� � C B S   A l l   A c c e s s   -   C B S N e w s . c o m  h t t p s : / / s i t e s . g o o g l e . c o m / a / c b s i n t e r a c t i v e . c o m / c b s n e w s / e n g i n e e r i n g / p a r t n e r - f e e d s / c b s - a l l - a c c e s s  � ��� �  h t t p : / / s o l r 8 0 . p h x 2 . c b s i g . n e t : 8 9 8 3 / s o l r / c b s n e w s / h u b E D i s M a x ? q = * & f q = s l u g : h a w a i i - b a b y - b o r n *  � ���8 C B S   N e w s   -   A g i l e   B o a r d   -   C B S i   J I R A  h t t p s : / / o w l . c b s i . c o m / j i r a / s e c u r e / R a p i d B o a r d . j s p a ? r a p i d V i e w = 5 7 3 & v i e w = d e t a i l & s e l e c t e d I s s u e = C B S N R V L R - 5 9 5 2 & q u i c k F i l t e r = 3 3 2 4  � ���
 [ C B S N R V L R - 6 0 2 2 ]   H U B   c h a n g e s   t o   a c c o m m o d a t e   s u b F r e e A v a i l a b l e D a t e   f r o m   M P X   -   C B S i   J I R A  h t t p s : / / o w l . c b s i . c o m / j i r a / b r o w s e / C B S N R V L R - 6 0 2 2  � ���< C B S   N e w s   /   c b s n e w s   /   f 8 c f c c f a 6 4 a   -   C B S i   S t a s h  h t t p s : / / o w l . c b s i . c o m / b i t b u c k e t / p r o j e c t s / C B S N E W S / r e p o s / c b s n e w s / c o m m i t s / f 8 c f c c f a 6 4 a e 2 d 7 d c 3 c 1 4 b 4 2 7 e 3 7 a b 1 9 7 5 2 b b 3 b 8  � ��� � C B S N e w s   -   D E V   -   F l y :   P l a n   s u m m a r y   -   C B S i   B a m b o o  h t t p s : / / o w l . c b s i . c o m / b a m b o o / b r o w s e / C B S N E W - F L Y D E V  � ��� � E x p o r t   S i t e   D a t a      R e c u r l y  h t t p s : / / c b s n e w s . r e c u r l y . c o m / e x p o r t s / n e w  � ��� l G e t   A c c o u n t  h t t p s : / / d e v . r e c u r l y . c o m / d o c s / g e t - a c c o u n t  � ��� ^ S u r f a c e  h t t p s : / / f e e d l y . c o m / i / c a t e g o r y / S u r f a c e  � ��� � C l a s s r o o m   -   U d a c i t y  h t t p s : / / w w w . u d a c i t y . c o m / c o u r s e / v i e w e r # ! / c - u d 9 5 3 / l - 4 3 7 4 4 7 1 1 1 6 / e - 4 5 8 3 4 9 3 2 6 3 / m - 4 5 8 3 4 9 3 2 6 6  � ��� � E x p l o r e r   C a r d   3 0 , 0 0 0   B o n u s   M i l e s   w i t h   n o   A n n u a l   F e e  h t t p s : / / w w w . t h e e x p l o r e r c a r d . c o m / 3 0 k A F W  � ��� � E a r n   M i l e a g e P l u s   F r e q u e n t   F l y e r   M i l e s   |   U n i t e d   A i r l i n e s  h t t p s : / / w w w . u n i t e d . c o m / w e b / e n - U S / c o n t e n t / m i l e a g e p l u s / d e f a u l t . a s p x��  � � ��� N S u n d a y ,   F e b r u a r y   1 4 ,   2 0 1 6   a t   8 : 3 1 : 2 2   A M� ��� � U R L   L i s t   f r o m   C h r o m e   T a b s   o n   S u n d a y ,   F e b r u a r y   1 4 ,   2 0 1 6   a t   8 : 3 1 : 2 2   A M� ��  �������
�� 
cwin�� 
�� kfrmID  � � � ��� n E a r n   M i l e a g e P l u s   F r e q u e n t   F l y e r   M i l e s   |   U n i t e d   A i r l i n e s� ��� � h t t p s : / / w w w . u n i t e d . c o m / w e b / e n - U S / c o n t e n t / m i l e a g e p l u s / d e f a u l t . a s p x�  �  �   ��   ascr  ��ޭ