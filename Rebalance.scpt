FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	This script creates a list of active actions and reports them in (reverse) order by context
	
	Report Format		
		HEADER
		BAR
		PRESTRING context SEPARATOR task SEPARATOR deferred date (if exists,  MM-DD-YYYY)
		...
     � 	 	� 
 	 T h i s   s c r i p t   c r e a t e s   a   l i s t   o f   a c t i v e   a c t i o n s   a n d   r e p o r t s   t h e m   i n   ( r e v e r s e )   o r d e r   b y   c o n t e x t 
 	 
 	 R e p o r t   F o r m a t 	 	 
 	 	 H E A D E R 
 	 	 B A R 
 	 	 P R E S T R I N G   c o n t e x t   S E P A R A T O R   t a s k   S E P A R A T O R   d e f e r r e d   d a t e   ( i f   e x i s t s ,     M M - D D - Y Y Y Y ) 
 	 	 . . . 
   
  
 l     ��������  ��  ��        j     �� �� 0 todaystr todayStr  m        �   
 T o d a y      l          j    �� �� &0 missingcontextstr missingContextStr  m       �    < e m p t y >  %  string when context is missing     �   >   s t r i n g   w h e n   c o n t e x t   i s   m i s s i n g      l          j    �� �� 0 barstr barStr  m         � ! !  - -    BAR string after header     � " " 0   B A R   s t r i n g   a f t e r   h e a d e r   # $ # l      % & ' % j   	 �� (�� 0 prestr preStr ( b   	  ) * ) m   	 
 + + � , , %� * 1   
 ��
�� 
tab  & ( " PRESTRING prior to each list item    ' � - - D   P R E S T R I N G   p r i o r   t o   e a c h   l i s t   i t e m $  . / . l      0 1 2 0 j    �� 3�� 0 actgroupstr actGroupStr 3 m     4 4 � 5 5  P r o j e c t   G r o u p 1 L F pre-string when task is action group (shows when expandGroup = false)    2 � 6 6 �   p r e - s t r i n g   w h e n   t a s k   i s   a c t i o n   g r o u p   ( s h o w s   w h e n   e x p a n d G r o u p   =   f a l s e ) /  7 8 7 l      9 : ; 9 j    �� <�� 0 sepstr sepStr < m     = = � > >    :   : 0 * SEPARATOR string between context and task    ; � ? ? T   S E P A R A T O R   s t r i n g   b e t w e e n   c o n t e x t   a n d   t a s k 8  @ A @ l     ��������  ��  ��   A  B C B l   � D���� D O    � E F E k   � G G  H I H O   � J K J k   � L L  M N M I   �� O��
�� .ascrcmnt****      � **** O m     P P � Q Q & S T A R T E D   R e b a l a n c i n g��   N  R S R l   ��������  ��  ��   S  T U T l   �� V W��   V    get list of today's tasks    W � X X 4   g e t   l i s t   o f   t o d a y ' s   t a s k s U  Y Z Y r     [ \ [ I   ������
�� .misccurdldt    ��� null��  ��   \ o      ���� 0 nowdate nowDate Z  ] ^ ] r     _ ` _ n     a b a 1    ��
�� 
hour b o    ���� 0 nowdate nowDate ` o      ���� 0 nowhours nowHours ^  c d c l   ��������  ��  ��   d  e f e r    & g h g I   $������
�� .misccurdldt    ��� null��  ��   h o      ���� 0 	todaydate 	todayDate f  i j i r   ' , k l k m   ' (����   l n      m n m 1   ) +��
�� 
hour n o   ( )���� 0 	todaydate 	todayDate j  o p o r   - 2 q r q m   - .����   r n      s t s 1   / 1��
�� 
min  t o   . /���� 0 	todaydate 	todayDate p  u v u r   3 8 w x w m   3 4����   x n      y z y m   5 7��
�� 
scnd z o   4 5���� 0 	todaydate 	todayDate v  { | { r   9 @ } ~ } [   9 >  �  o   9 :���� 0 	todaydate 	todayDate � ]   : = � � � m   : ;����  � 1   ; <��
�� 
days ~ o      ���� 0 tomorrowdate tomorrowDate |  � � � r   A � � � � l  A } ����� � 6 A } � � � 2  A D��
�� 
FCft � F   E | � � � =  F M � � � 1   G I��
�� 
FCcd � m   J L��
�� boovfals � l  N { ����� � G   N { � � � l  O d ����� � F   O d � � � @   P Y � � � 1   Q U��
�� 
FCDs � o   V X���� 0 	todaydate 	todayDate � A   Z c � � � 1   [ _��
�� 
FCDs � o   ` b���� 0 tomorrowdate tomorrowDate��  ��   � l  e z ����� � F   e z � � � @   f o � � � 1   g k��
�� 
FCDd � o   l n���� 0 	todaydate 	todayDate � A   p y � � � 1   q u��
�� 
FCDd � o   v x���� 0 tomorrowdate tomorrowDate��  ��  ��  ��  ��  ��   � o      ���� 0 todaystasks todaysTasks �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����  � o      ���� (0 maxnumreadingtasks maxNumReadingTasks �  � � � r   � � � � � m   � �����   � o      ���� 00 currentnumreadingtasks currentNumReadingTasks �  � � � r   � � � � � m   � �����  � o      ���� $0 maxnumvideotasks maxNumVideoTasks �  � � � r   � � � � � m   � �����   � o      ���� ,0 currentnumvideotasks currentNumVideoTasks �  � � � r   � � � � � m   � �����  � o      ���� $0 maxnumclasstasks maxNumClassTasks �  � � � r   � � � � � m   � �����   � o      ���� ,0 currentnumclasstasks currentNumClassTasks �  � � � r   � � � � � m   � �����  � o      ���� *0 maxnumexercisetasks maxNumExerciseTasks �  � � � r   � � � � � m   � �����   � o      ���� 20 currentnumexercisetasks currentNumExerciseTasks �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 40 isinterviewpracticetoday isInterviewPracticeToday �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 80 isprogrammingpracticetoday isProgrammingPracticeToday �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 20 isrelationshiptasktoday isRelationshipTaskToday �  � � � r   � � � � � m   � ���
�� boovfals � o      ���� 40 isrecreationalvideotoday isRecreationalVideoToday �  � � � l  � ���������  ��  ��   �  � � � X   �f ��� � � k   �a � �  � � � l  � ���������  ��  ��   �  � � � Z   �� � ����� � l  � � ����� � ?   � � � � � o   � ����� 0 nowhours nowHours � m   � ����� 
��  ��   � k   � � �  � � � Z   � � � ����� � l  � � ����� � =   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 t   � m   � � � � � � �  w o r k   o u t��  ��   � r   � � � � � m   � ���
�� boovtrue � n      � � � 1   � ���
�� 
FCcd � o   � ����� 0 t  ��  ��   �  � � � Z   �! � ����� � l  � ����� � =   � � � � n   � � � � 1   ���
�� 
pnam � o   � ����� 0 t   � m   � � � � �  r u n��  ��   � k  
 � �  � � � I 
�� ���
�� .ascrcmnt****      � **** � n 
   I  ����� 0 logthis logThis  o  �~�~ 0 t   �} o  �|�| 0 tomorrowdate tomorrowDate�}  �    f  
��   � �{ r   o  �z�z 0 tomorrowdate tomorrowDate n     	
	 1  �y
�y 
FCDs
 o  �x�x 0 t  �{  ��  ��   �  Z  "E�w�v l "+�u�t =  "+ n  "' 1  #'�s
�s 
pnam o  "#�r�r 0 t   m  '* � 0 d o   s h o u l d e r   P T   e x e r c i s e s�u  �t   k  .A  I .9�q�p
�q .ascrcmnt****      � **** n .5 I  /5�o�n�o 0 logthis logThis  o  /0�m�m 0 t   �l o  01�k�k 0 tomorrowdate tomorrowDate�l  �n    f  ./�p    �j  r  :A!"! o  :;�i�i 0 tomorrowdate tomorrowDate" n     #$# 1  <@�h
�h 
FCDs$ o  ;<�g�g 0 t  �j  �w  �v   %&% Z  F['(�f�e' l FO)�d�c) =  FO*+* n  FK,-, 1  GK�b
�b 
pnam- o  FG�a�a 0 t  + m  KN.. �// B m a k e   g r e e n   s m o o t h i e   ( a d d   O m e g a   3 )�d  �c  ( r  RW010 m  RS�`
�` boovtrue1 n     232 1  TV�_
�_ 
FCcd3 o  ST�^�^ 0 t  �f  �e  & 4�]4 Z  \56�\�[5 l \e7�Z�Y7 =  \e898 n  \a:;: 1  ]a�X
�X 
pnam; o  \]�W�W 0 t  9 m  ad<< �==  w r i t e   3   p a g e s�Z  �Y  6 k  h{>> ?@? I hs�VA�U
�V .ascrcmnt****      � ****A n hoBCB I  io�TD�S�T 0 logthis logThisD EFE o  ij�R�R 0 t  F G�QG o  jk�P�P 0 tomorrowdate tomorrowDate�Q  �S  C  f  hi�U  @ H�OH r  t{IJI o  tu�N�N 0 tomorrowdate tomorrowDateJ n     KLK 1  vz�M
�M 
FCDsL o  uv�L�L 0 t  �O  �\  �[  �]  ��  ��   � MNM l ���K�J�I�K  �J  �I  N OPO Z  ��QR�H�GQ l ��S�F�ES > ��TUT n  ��VWV m  ���D
�D 
FCctW o  ���C�C 0 t  U m  ���B
�B 
msng�F  �E  R Z  ��XY�A�@X l ��Z�?�>Z =  ��[\[ n  ��]^] 1  ���=
�= 
pnam^ n  ��_`_ m  ���<
�< 
FCct` o  ���;�; 0 t  \ m  ��aa �bb  b o o k�?  �>  Y k  ��cc ded r  ��fgf [  ��hih o  ���:�: 00 currentnumreadingtasks currentNumReadingTasksi m  ���9�9 g o      �8�8 00 currentnumreadingtasks currentNumReadingTaskse j�7j Z  ��kl�6�5k l ��m�4�3m ?  ��non o  ���2�2 00 currentnumreadingtasks currentNumReadingTaskso o  ���1�1 (0 maxnumreadingtasks maxNumReadingTasks�4  �3  l k  ��pp qrq I ���0s�/
�0 .ascrcmnt****      � ****s n ��tut I  ���.v�-�. 0 logthis logThisv wxw o  ���,�, 0 t  x y�+y o  ���*�* 0 tomorrowdate tomorrowDate�+  �-  u  f  ���/  r z{z r  ��|}| o  ���)�) 0 tomorrowdate tomorrowDate} n     ~~ 1  ���(
�( 
FCDs o  ���'�' 0 t  { ��&� l ���%�$�#�%  �$  �#  �&  �6  �5  �7  �A  �@  �H  �G  P ��� l ���"�!� �"  �!  �   � ��� Z  ������� l ������ > ����� n  ����� 1  ���
� 
FCPr� o  ���� 0 t  � m  ���
� 
msng�  �  � k  ���� ��� Z  �#����� l ������ =  ����� n  ����� 1  ���
� 
pnam� n  ����� 1  ���
� 
FCPr� o  ���� 0 t  � m  ���� ���  V i d e o s�  �  � k  ��� ��� r  ����� [  ����� o  ���� 00 currentnumreadingtasks currentNumReadingTasks� m  ���� � o      �� ,0 currentnumvideotasks currentNumVideoTasks� ��� Z  ������ l ����
� ?  ���� o  ���	�	 ,0 currentnumvideotasks currentNumVideoTasks� o  ��� $0 maxnumvideotasks maxNumVideoTasks�  �
  � k  �� ��� I ���
� .ascrcmnt****      � ****� n ��� I  ���� 0 logthis logThis� ��� o  �� 0 t  � ��� o  	�� 0 tomorrowdate tomorrowDate�  �  �  f  �  � ��� r  ��� o  � �  0 tomorrowdate tomorrowDate� n     ��� 1  ��
�� 
FCDs� o  ���� 0 t  � ���� l ��������  ��  ��  ��  �  �  �  �  �  � ��� l $$��������  ��  ��  � ��� Z  $e������� l $1������ =  $1��� n  $-��� 1  )-��
�� 
pnam� n  $)��� 1  %)��
�� 
FCPr� o  $%���� 0 t  � m  -0�� ���  M a i n t e n a n c e��  ��  � k  4a�� ��� r  4=��� [  49��� o  47���� 20 currentnumexercisetasks currentNumExerciseTasks� m  78���� � o      ���� 20 currentnumexercisetasks currentNumExerciseTasks� ���� Z  >a������� l >E������ ?  >E��� o  >A���� 20 currentnumexercisetasks currentNumExerciseTasks� o  AD���� *0 maxnumexercisetasks maxNumExerciseTasks��  ��  � k  H]�� ��� I HS�����
�� .ascrcmnt****      � ****� n HO��� I  IO������� 0 logthis logThis� ��� o  IJ���� 0 t  � ���� o  JK���� 0 tomorrowdate tomorrowDate��  ��  �  f  HI��  � ��� r  T[��� o  TU���� 0 tomorrowdate tomorrowDate� n     ��� 1  VZ��
�� 
FCDs� o  UV���� 0 t  � ���� l \\��������  ��  ��  ��  ��  ��  ��  ��  ��  � ��� l ff��������  ��  ��  � ��� Z  f������� l fs������ =  fs��� n  fo��� 1  ko��
�� 
pnam� n  fk��� 1  gk��
�� 
FCPr� o  fg���� 0 t  � m  or�� ��� $ I n t e r v i e w   P r a c t i c e��  ��  � r  v{��� m  vw��
�� boovtrue� o      ���� 40 isinterviewpracticetoday isInterviewPracticeToday��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� l �������� =  ����� n  ��� � 1  ����
�� 
pnam  n  �� 1  ����
�� 
FCPr o  ������ 0 t  � m  �� �  P r a c t i c e��  ��  � r  �� m  ����
�� boovtrue o      ���� 80 isprogrammingpracticetoday isProgrammingPracticeToday��  ��  � �� l ����������  ��  ��  ��  �  �  � 	 l ����������  ��  ��  	 

 Z  �_���� l ������ > �� n  �� m  ����
�� 
FCAr n  �� 1  ����
�� 
FCPr o  ������ 0 t   m  ����
�� 
msng��  ��   k  �[  Z  �	���� l ������ F  �� =  �� n  ��  1  ����
�� 
pnam  n  ��!"! m  ����
�� 
FCAr" n  ��#$# 1  ����
�� 
FCPr$ o  ������ 0 t   m  ��%% �&&   C l a s s e s   /   S k i l l s =  ��'(' n  ��)*) 1  ����
�� 
pnam* n  ��+,+ 1  ����
�� 
FCPr, o  ������ 0 t  ( m  ��-- �..  T e c h��  ��   k  �// 010 r  ��232 [  ��454 o  ������ ,0 currentnumclasstasks currentNumClassTasks5 m  ������ 3 o      ���� ,0 currentnumclasstasks currentNumClassTasks1 6��6 Z  �78����7 l ��9����9 ?  ��:;: o  ������ ,0 currentnumclasstasks currentNumClassTasks; o  ������ $0 maxnumclasstasks maxNumClassTasks��  ��  8 k  �<< =>= I ����?��
�� .ascrcmnt****      � ****? n ��@A@ I  ����B���� 0 logthis logThisB CDC o  ������ 0 t  D E��E o  ������ 0 tomorrowdate tomorrowDate��  ��  A  f  ����  > FGF r  ��HIH o  ������ 0 tomorrowdate tomorrowDateI n     JKJ 1  ����
�� 
FCDsK o  ������ 0 t  G L��L l   ��������  ��  ��  ��  ��  ��  ��  ��  ��   MNM l 

��������  ��  ��  N OPO Z  
'QR����Q l 
S����S =  
TUT n  
VWV 1  ��
�� 
pnamW n  
XYX m  ��
�� 
FCArY n  
Z[Z 1  ��
�� 
FCPr[ o  
���� 0 t  U m  \\ �]]  R e l a t i o n s h i p��  ��  R r  #^_^ m  ��
�� boovtrue_ o      ���� 20 isrelationshiptasktoday isRelationshipTaskToday��  ��  P `a` l ((����~��  �  �~  a bcb Z  (Yde�}�|d l (Mf�{�zf F  (Mghg =  (9iji n  (5klk 1  15�y
�y 
pnaml n  (1mnm m  -1�x
�x 
FCArn n  (-opo 1  )-�w
�w 
FCPrp o  ()�v�v 0 t  j m  58qq �rr $ R e c r e a t i o n   /   V i d e oh =  <Ists n  <Euvu 1  AE�u
�u 
pnamv n  <Awxw 1  =A�t
�t 
FCPrx o  <=�s�s 0 t  t m  EHyy �zz  T e c h�{  �z  e r  PU{|{ m  PQ�r
�r boovtrue| o      �q�q 40 isrecreationalvideotoday isRecreationalVideoToday�}  �|  c }�p} l ZZ�o�n�m�o  �n  �m  �p  ��  ��   ~�l~ l ``�k�j�i�k  �j  �i  �l  �� 0 t   � o   � ��h�h 0 todaystasks todaysTasks � � l gg�g�f�e�g  �f  �e  � ��� Z  g���d�c� l gl��b�a� =  gl��� o  gj�`�` 40 isinterviewpracticetoday isInterviewPracticeToday� m  jk�_
�_ boovfals�b  �a  � n o{��� I  p{�^��]�^  0 deferinproject deferInProject� ��� m  ps�� ��� $ I n t e r v i e w   P r a c t i c e� ��� m  sv�\�\ � ��[� o  vw�Z�Z 0 	todaydate 	todayDate�[  �]  �  f  op�d  �c  � ��� l ���Y�X�W�Y  �X  �W  � ��� Z  �����V�U� l ����T�S� =  ����� o  ���R�R 80 isprogrammingpracticetoday isProgrammingPracticeToday� m  ���Q
�Q boovfals�T  �S  � n ����� I  ���P��O�P  0 deferinproject deferInProject� ��� m  ���� ���  P r a c t i c e� ��� m  ���N�N � ��M� o  ���L�L 0 	todaydate 	todayDate�M  �O  �  f  ���V  �U  � ��� l ���K�J�I�K  �J  �I  � ��� Z  �����H�G� l ����F�E� =  ����� o  ���D�D 20 isrelationshiptasktoday isRelationshipTaskToday� m  ���C
�C boovfals�F  �E  � n ����� I  ���B��A�B 0 deferinfolder deferInFolder� ��� m  ���� ���  R e l a t i o n s h i p� ��� m  ���@�@ � ��?� o  ���>�> 0 	todaydate 	todayDate�?  �A  �  f  ���H  �G  � ��� l ���=�<�;�=  �<  �;  � ��� Z  �����:�9� l ����8�7� =  ����� o  ���6�6 40 isrecreationalvideotoday isRecreationalVideoToday� m  ���5
�5 boovfals�8  �7  � n ����� I  ���4��3�4 0 deferinfolder deferInFolder� ��� m  ���� ��� 
 V i d e o� ��� m  ���2�2 � ��1� o  ���0�0 0 	todaydate 	todayDate�1  �3  �  f  ���:  �9  � ��� l ���/�.�-�/  �.  �-  � ��� I ���,��+
�, .ascrcmnt****      � ****� m  ���� ��� * C O M P L E T E D   R e b a l a n c i n g�+  � ��*� l ���)�(�'�)  �(  �'  �*   K 4   �&�
�& 
docu� m    �%�%  I ��$� l ���#�"�!�#  �"  �!  �$   F m     ���                                                                                  OFOC  alis    X  Macintosh HD               �R�\H+     �OmniFocus.app                                                  �߂��7�        ����  	                Applications    �S!�      �Ѩ	       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   C ��� l     � ���   �  �  � ��� i    ��� I      ���� 0 dateisoformat dateISOFormat� ��� o      �� 0 thedate theDate�  �  � k     B�� ��� r     ��� n     ��� 7   ���
� 
ctxt� m   	 ����� m    ����� l    ���� b     ��� m     �� ���  0 0 0 0� l   ���� n    ��� 1    �
� 
year� o    �� 0 thedate theDate�  �  �  �  � o      �� 0 y  � ��� r    %��� n    #��� 7   #���
� 
ctxt� m    ����� m     "����� l   ���� b    ��� m    �� ���  0 0� l   ��
�	� c    ��� l   ���� n       m    �
� 
mnth o    �� 0 thedate theDate�  �  � m    �
� 
long�
  �	  �  �  � o      �� 0 m  �  r   & 7 n   & 5 7  + 5�	
� 
ctxt m   / 1����	 m   2 4� � �� l  & +
����
 b   & + m   & ' �  0 0 l  ' *���� n   ' * 1   ( *��
�� 
day  o   ' (���� 0 thedate theDate��  ��  ��  ��   o      ���� 0 d   �� L   8 B b   8 A b   8 ? b   8 = b   8 ; o   8 9���� 0 y   m   9 : �  - o   ; <���� 0 m   m   = > �  - o   ? @���� 0 d  ��  �  !  l     ��������  ��  ��  ! "#" i    $%$ I      ��&���� 0 gettexttask getTextTask& '��' o      ���� 0 listitem ListItem��  ��  % w     s()( k    s** +,+ r    	-.- o    ���� &0 missingcontextstr missingContextStr. o      ���� 0 
thecontext 
theContext, /0/ Z   
 )12����1 l  
 3����3 >  
 454 n   
 676 m    ��
�� 
FCct7 o   
 ���� 0 listitem ListItem5 m    ��
�� 
msng��  ��  2 r    %898 b    #:;: b    <=< o    ���� 0 prestr preStr= l   >����> n    ?@? 1    ��
�� 
pnam@ n    ABA m    ��
�� 
FCctB o    ���� 0 listitem ListItem��  ��  ; o    "���� 0 sepstr sepStr9 o      ���� 0 
thecontext 
theContext��  ��  0 CDC r   * /EFE l  * -G����G n   * -HIH 1   + -��
�� 
pnamI o   * +���� 0 listitem ListItem��  ��  F o      ���� 0 	theaction 	theActionD JKJ r   0 3LML m   0 1NN �OO  M o      ���� 0 
theproject 
theProjectK PQP Z   4 MRS����R l  4 9T����T >  4 9UVU n   4 7WXW 1   5 7��
�� 
FCPrX o   4 5���� 0 listitem ListItemV m   7 8��
�� 
msng��  ��  S r   < IYZY b   < G[\[ l  < A]����] n   < A^_^ 1   ? A��
�� 
pnam_ n   < ?`a` 1   = ?��
�� 
FCPra o   < =���� 0 listitem ListItem��  ��  \ o   A F���� 0 sepstr sepStrZ o      ���� 0 
theproject 
theProject��  ��  Q bcb r   N Qded m   N Off �gg  e o      ���� 0 	deferdate 	deferDatec hih Z   R njk����j l  R Wl����l >  R Wmnm n   R Uopo 1   S U��
�� 
FCDsp o   R S���� 0 listitem ListItemn m   U V��
�� 
msng��  ��  k r   Z jqrq b   Z hsts o   Z _���� 0 sepstr sepStrt n  _ guvu I   ` g��w���� 0 dateisoformat dateISOFormatw x��x n   ` cyzy 1   a c��
�� 
FCDsz o   ` a���� 0 listitem ListItem��  ��  v  f   _ `r o      ���� 0 	deferdate 	deferDate��  ��  i {|{ l  o o��������  ��  ��  | }~} l  o o�����   @ : return theContext & theProject & theAction & deferDate --   � ��� t   r e t u r n   t h e C o n t e x t   &   t h e P r o j e c t   &   t h e A c t i o n   &   d e f e r D a t e   - -~ ���� l  o s������ L   o s�� b   o r��� o   o p���� 0 	theaction 	theAction� o   p q���� 0 	deferdate 	deferDate��  ��  ��  )�                                                                                  OFOC  alis    X  Macintosh HD               �R�\H+     �OmniFocus.app                                                  �߂��7�        ����  	                Applications    �S!�      �Ѩ	       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  # ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 deferinproject deferInProject� ��� o      ���� 0 projectname projectName� ��� o      ���� 0 	deferdays 	deferDays� ���� o      ���� 0 	todaydate 	todayDate��  ��  � O     ]��� O    \��� k    [�� ��� r    ��� 6  ��� 4   ���
�� 
FCfx� m    ���� � =    ��� n   ��� 1    ��
�� 
pnam�  g    � o    ���� 0 projectname projectName� o      ���� 0 customproject customProject� ��� r    )��� l   '������ 6  '��� n    ��� 2   ��
�� 
FCft� o    ���� 0 customproject customProject� =   &��� 1     "��
�� 
FCcd� m   # %��
�� boovfals��  ��  � o      ���� 0 customtasks customTasks� ���� X   * [����� k   : V�� ��� I  : I�����
�� .ascrcmnt****      � ****� n  : E��� I   ; E������� 0 logthis logThis� ��� o   ; <���� 0 t  � ���� [   < A��� o   < =���� 0 	todaydate 	todayDate� ]   = @��� o   = >���� 0 	deferdays 	deferDays� 1   > ?��
�� 
days��  ��  �  f   : ;��  � ��� r   J S��� [   J O��� o   J K���� 0 	todaydate 	todayDate� ]   K N��� o   K L���� 0 	deferdays 	deferDays� 1   L M��
�� 
days� n     ��� 1   P R��
�� 
FCDs� o   O P���� 0 t  � ���� L   T V����  ��  �� 0 t  � o   - .���� 0 customtasks customTasks��  � 4   ���
�� 
docu� m    ���� � m     ���                                                                                  OFOC  alis    X  Macintosh HD               �R�\H+     �OmniFocus.app                                                  �߂��7�        ����  	                Applications    �S!�      �Ѩ	       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i     #��� I      ������� 0 deferinfolder deferInFolder� ��� o      ���� 0 
foldername 
folderName� ��� o      ���� 0 	deferdays 	deferDays� ��� o      �~�~ 0 	todaydate 	todayDate�  ��  � O     x��� O    w��� k    v�� ��� r    ��� 6  ��� 4   �}�
�} 
FCff� m    �|�| � =    ��� n   ��� 1    �{
�{ 
pnam�  g    � o    �z�z 0 
foldername 
folderName� o      �y�y 0 customfolder customFolder� ��� r     ��� l   ��x�w� n    ��� 2   �v
�v 
FCfx� o    �u�u 0 customfolder customFolder�x  �w  � o      �t�t  0 customprojects customProjects� ��s� X   ! v��r�� k   1 q�� ��� r   1 ?��� l  1 =��q�p� 6 1 =��� n   1 4��� 2  2 4�o
�o 
FCft� o   1 2�n�n 0 p  � =  5 <��� 1   6 8�m
�m 
FCcd� m   9 ;�l
�l boovfals�q  �p  � o      �k�k 0 customtasks customTasks� ��j� X   @ q��i � k   P l  I  P _�h�g
�h .ascrcmnt****      � **** n  P [ I   Q [�f�e�f 0 logthis logThis 	 o   Q R�d�d 0 t  	 
�c
 [   R W o   R S�b�b 0 	todaydate 	todayDate ]   S V o   S T�a�a 0 	deferdays 	deferDays 1   T U�`
�` 
days�c  �e    f   P Q�g    r   ` i [   ` e o   ` a�_�_ 0 	todaydate 	todayDate ]   a d o   a b�^�^ 0 	deferdays 	deferDays 1   b c�]
�] 
days n      1   f h�\
�\ 
FCDs o   e f�[�[ 0 t   �Z L   j l�Y�Y  �Z  �i 0 t    o   C D�X�X 0 customtasks customTasks�j  �r 0 p  � o   $ %�W�W  0 customprojects customProjects�s  � 4   �V
�V 
docu m    �U�U � m     �                                                                                  OFOC  alis    X  Macintosh HD               �R�\H+     �OmniFocus.app                                                  �߂��7�        ����  	                Applications    �S!�      �Ѩ	       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �T�S�R�T  �S  �R   �Q i   $ '  I      �P!�O�P 0 logthis logThis! "#" o      �N�N 0 listitem ListItem# $�M$ o      �L�L 0 	deferdate 	deferDate�M  �O    k     %% &'& r     ()( b     *+* b     ,-, b     
./. b     010 m     22 �33  D e f e r r i n g  1 n   454 I    �K6�J�K 0 gettexttask getTextTask6 7�I7 o    �H�H 0 listitem ListItem�I  �J  5  f    / m    	88 �99    t o  - n  
 :;: I    �G<�F�G 0 dateisoformat dateISOFormat< =�E= o    �D�D 0 	deferdate 	deferDate�E  �F  ;  f   
 + o    �C
�C 
ret ) o      �B�B 0 tolog toLog' >�A> L    ?? o    �@�@ 0 tolog toLog�A  �Q       2�?@    A 4 =BCDEFGH�>IJK�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��?  @ 0���������������������
�	��������� ����������������������������������� 0 todaystr todayStr� &0 missingcontextstr missingContextStr� 0 barstr barStr� 0 prestr preStr� 0 actgroupstr actGroupStr� 0 sepstr sepStr� 0 dateisoformat dateISOFormat� 0 gettexttask getTextTask�  0 deferinproject deferInProject� 0 deferinfolder deferInFolder� 0 logthis logThis
� .aevtoappnull  �   � ****� 0 nowdate nowDate� 0 nowhours nowHours� 0 	todaydate 	todayDate� 0 tomorrowdate tomorrowDate� 0 todaystasks todaysTasks� (0 maxnumreadingtasks maxNumReadingTasks� 00 currentnumreadingtasks currentNumReadingTasks� $0 maxnumvideotasks maxNumVideoTasks�
 ,0 currentnumvideotasks currentNumVideoTasks�	 $0 maxnumclasstasks maxNumClassTasks� ,0 currentnumclasstasks currentNumClassTasks� *0 maxnumexercisetasks maxNumExerciseTasks� 20 currentnumexercisetasks currentNumExerciseTasks� 40 isinterviewpracticetoday isInterviewPracticeToday� 80 isprogrammingpracticetoday isProgrammingPracticeToday� 20 isrelationshiptasktoday isRelationshipTaskToday� 40 isrecreationalvideotoday isRecreationalVideoToday�  �   ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  A �LL %� 	B �������MN���� 0 dateisoformat dateISOFormat�� ��O�� O  ���� 0 thedate theDate��  M ���������� 0 thedate theDate�� 0 y  �� 0 m  �� 0 d  N ����������������
�� 
year
�� 
ctxt����
�� 
mnth
�� 
long����
�� 
day �� C��,%[�\[Z�\Zi2E�O��,�&%[�\[Z�\Zi2E�O��,%[�\[Z�\Zi2E�O��%�%�%�%C ��%����PQ���� 0 gettexttask getTextTask�� ��R�� R  ���� 0 listitem ListItem��  P ������������ 0 listitem ListItem�� 0 
thecontext 
theContext�� 0 	theaction 	theAction�� 0 
theproject 
theProject�� 0 	deferdate 	deferDateQ 	)������N��f����
�� 
FCct
�� 
msng
�� 
pnam
�� 
FCPr
�� 
FCDs�� 0 dateisoformat dateISOFormat�� t�Zb  E�O��,� b  ��,�,%b  %E�Y hO��,E�O�E�O��,� ��,�,b  %E�Y hO�E�O��,� b  )��,k+ %E�Y hO��%D �������ST����  0 deferinproject deferInProject�� ��U�� U  �������� 0 projectname projectName�� 0 	deferdays 	deferDays�� 0 	todaydate 	todayDate��  S �������������� 0 projectname projectName�� 0 	deferdays 	deferDays�� 0 	todaydate 	todayDate�� 0 customproject customProject�� 0 customtasks customTasks�� 0 t  T �����V��������������������
�� 
docu
�� 
FCfxV  
�� 
pnam
�� 
FCft
�� 
FCcd
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
days�� 0 logthis logThis
�� .ascrcmnt****      � ****
�� 
FCDs�� ^� Z*�k/ R*�k/�[�,\Z�81E�O��-�[�,\Zf81E�O 0�[��l 	kh )���� l+ j O��� ��,FOh[OY��UUE �������WX���� 0 deferinfolder deferInFolder�� ��Y�� Y  �������� 0 
foldername 
folderName�� 0 	deferdays 	deferDays�� 0 	todaydate 	todayDate��  W ������������������ 0 
foldername 
folderName�� 0 	deferdays 	deferDays�� 0 	todaydate 	todayDate�� 0 customfolder customFolder��  0 customprojects customProjects�� 0 p  �� 0 customtasks customTasks�� 0 t  X ����V����������������������
�� 
docu
�� 
FCff
�� 
pnam
�� 
FCfx
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCft
�� 
FCcd
�� 
days�� 0 logthis logThis
�� .ascrcmnt****      � ****
�� 
FCDs�� y� u*�k/ m*�k/�[�,\Z�81E�O��-E�O T�[��l kh ��-�[�,\Zf81E�O 0�[��l kh )���� l+ j O��� ��,FOh[OY��[OY��UUF �� ����Z[���� 0 logthis logThis�� ��\�� \  ������ 0 listitem ListItem�� 0 	deferdate 	deferDate��  Z �������� 0 listitem ListItem�� 0 	deferdate 	deferDate�� 0 tolog toLog[ 2��8������ 0 gettexttask getTextTask�� 0 dateisoformat dateISOFormat
�� 
ret �� �)�k+ %�%)�k+ %�%E�O�G ��]����^_��
�� .aevtoappnull  �   � ****] k    �``  B����  ��  ��  ^ ���� 0 t  _ B��� P������~�}�|�{�z�y�x�wV�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b � ��a.<�`�_a�^����]%-�\\qy��[�Z���Y�X��
�� 
docu
�� .ascrcmnt****      � ****
�� .misccurdldt    ��� null� 0 nowdate nowDate
�~ 
hour�} 0 nowhours nowHours�| 0 	todaydate 	todayDate
�{ 
min 
�z 
scnd
�y 
days�x 0 tomorrowdate tomorrowDate
�w 
FCft
�v 
FCcd
�u 
FCDs
�t 
FCDd�s 0 todaystasks todaysTasks�r (0 maxnumreadingtasks maxNumReadingTasks�q 00 currentnumreadingtasks currentNumReadingTasks�p $0 maxnumvideotasks maxNumVideoTasks�o ,0 currentnumvideotasks currentNumVideoTasks�n $0 maxnumclasstasks maxNumClassTasks�m ,0 currentnumclasstasks currentNumClassTasks�l *0 maxnumexercisetasks maxNumExerciseTasks�k 20 currentnumexercisetasks currentNumExerciseTasks�j 40 isinterviewpracticetoday isInterviewPracticeToday�i 80 isprogrammingpracticetoday isProgrammingPracticeToday�h 20 isrelationshiptasktoday isRelationshipTaskToday�g 40 isrecreationalvideotoday isRecreationalVideoToday
�f 
kocl
�e 
cobj
�d .corecnte****       ****�c 

�b 
pnam�a 0 logthis logThis
�` 
FCct
�_ 
msng
�^ 
FCPr
�] 
FCAr
�\ 
bool�[ �Z  0 deferinproject deferInProject�Y �X 0 deferinfolder deferInFolder�����*�k/��j O*j E�O��,E�O*j E�Oj��,FOj��,FOj��,FO�k� E�O*�-�[[�,\Zf8\[[[a ,\Z�;\[a ,\Z�<A\[[a ,\Z�;\[a ,\Z�<ABA1E` OlE` OjE` OkE` OjE` OkE` OjE` OmE` OjE` OfE` OfE` OfE` OfE` O�_ [a a  l !kh  �a " ��a #,a $  
e��,FY hO�a #,a %  )��l+ &j O̠a ,FY hO�a #,a '  )��l+ &j O̠a ,FY hO�a #,a (  
e��,FY hO�a #,a )  )��l+ &j O̠a ,FY hY hO�a *,a + F�a *,a #,a ,  2_ kE` O_ _  )��l+ &j O̠a ,FOPY hY hY hO�a -,a + ��a -,a #,a .  2_ kE` O_ _  )��l+ &j O̠a ,FOPY hY hO�a -,a #,a /  2_ kE` O_ _  )��l+ &j O̠a ,FOPY hY hO�a -,a #,a 0  
eE` Y hO�a -,a #,a 1  
eE` Y hOPY hO�a -,a 2,a + ��a -,a 2,a #,a 3 	 �a -,a #,a 4 a 5& 2_ kE` O_ _  )��l+ &j O̠a ,FOPY hY hO�a -,a 2,a #,a 6  
eE` Y hO�a -,a 2,a #,a 7 	 �a -,a #,a 8 a 5& 
eE` Y hOPY hOP[OY�yO_ f  )a 9a :�m+ ;Y hO_ f  )a <m�m+ ;Y hO_ f  )a =a >�m+ ?Y hO_ f  )a @a :�m+ ?Y hOa Aj OPUOPUH ldt     �����> I ldt     ��t J ldt     ��ŀK �Wa�W a  bcdefghijklmnopqrb ss t�Vu�Ut ��Tv�S
�T 
docuv �ww  m F A a L h O H c a V
�S kfrmID  
�V 
FCacu �xx  n g Q - k W x G w s k
�U kfrmID  c yy z�R{�Qz ��P|�O
�P 
docu| �}}  m F A a L h O H c a V
�O kfrmID  
�R 
FCac{ �~~  l 3 Y i w o 9 o W a z
�Q kfrmID  d  ��N��M� ��L��K
�L 
docu� ���  m F A a L h O H c a V
�K kfrmID  
�N 
FCac� ���  h j M d D 0 L D K T P
�M kfrmID  e �� ��J��I� ��H��G
�H 
docu� ���  m F A a L h O H c a V
�G kfrmID  
�J 
FCac� ���  k F Y y o h e - H l D
�I kfrmID  f �� ��F��E� ��D��C
�D 
docu� ���  m F A a L h O H c a V
�C kfrmID  
�F 
FCac� ���  i X C R s R I I L F j
�E kfrmID  g �� ��B��A� ��@��?
�@ 
docu� ���  m F A a L h O H c a V
�? kfrmID  
�B 
FCac� ���  o q M r J c 3 p r p 0
�A kfrmID  h �� ��>��=� ��<��;
�< 
docu� ���  m F A a L h O H c a V
�; kfrmID  
�> 
FCac� ���  c 3 x C 9 6 J 9 q M c
�= kfrmID  i �� ��:��9� ��8��7
�8 
docu� ���  m F A a L h O H c a V
�7 kfrmID  
�: 
FCac� ���  l J _ Q h s h d R L M
�9 kfrmID  j �� ��6��5� ��4��3
�4 
docu� ���  m F A a L h O H c a V
�3 kfrmID  
�6 
FCac� ���  j c G 7 R 5 M 3 z m G
�5 kfrmID  k �� ��2��1� ��0��/
�0 
docu� ���  m F A a L h O H c a V
�/ kfrmID  
�2 
FCac� ���  h i W r V Y X 5 V B b
�1 kfrmID  l �� ��.��-� ��,��+
�, 
docu� ���  m F A a L h O H c a V
�+ kfrmID  
�. 
FCac� ���  k L S l 9 g O b W t c
�- kfrmID  m �� ��*��)� ��(��'
�( 
docu� ���  m F A a L h O H c a V
�' kfrmID  
�* 
FCac� ���  k b K C 3 H 1 4 Q 8 K
�) kfrmID  n �� ��&��%� ��$��#
�$ 
docu� ���  m F A a L h O H c a V
�# kfrmID  
�& 
FCac� ���  p W 7 J w D L 8 c 2 x
�% kfrmID  o �� ��"��!� �� ��
�  
docu� ���  m F A a L h O H c a V
� kfrmID  
�" 
FCac� ���  b d k i S W U L a l U
�! kfrmID  p �� ����� ����
� 
docu� ���  m F A a L h O H c a V
� kfrmID  
� 
FCac� ���  l g Z 5 D L T r a H A
� kfrmID  q �� ����� ����
� 
docu� ���  m F A a L h O H c a V
� kfrmID  
� 
FCac� ���  c e 7 - B X h k U H 0
� kfrmID  r �� ����� ����
� 
docu� ���  m F A a L h O H c a V
� kfrmID  
� 
FCac� ���  d 5 U 1 z A e L p w z
� kfrmID  �= �< �; �:  �9 �8 �7 �6 
�5 boovtrue
�4 boovfals
�3 boovfals
�2 boovfals�1  �0  �/  �.  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �   ascr  ��ޭ