# Numerical compiler + interpretativ functions
## What this code does
A compiler for numerical expressions, conditions and loops, C, Flex(Lex), Bison(Yacc) with interpretativ functions and graf/text outputs.

### Programing languages and technology used

<img align="left" width="30px" style="padding-right:10px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gcc/gcc-original.svg" /> 
<img align="left" width="30px" style="padding-right:10px" src="https://upload.wikimedia.org/wikipedia/commons/3/35/The_C_Programming_Language_logo.svg" />

<br>  

## The cmd commands - I used a unix system to run this commands
<pre>
flex -o calc3.yy.c calc3.l
bison -dv calc3.y
gcc -o calc3A.exe calc3.tab.c calc3.yy.c calc3a.c -lm -lfl
./calc3A.exe intrare2.txt iesire.txt
gcc -o calc3C.exe calc3.tab.c calc3.yy.c calc3g.c -lm -lfl
./calc3C.exe intrare2.txt iesireGraf.txt
</pre>

## The data from the input file
<pre>
print "Testare declaratii\n";
a="abc";
print a;
D="kkkkkk";
print D;
b="AB_+C", c="Sirul3";
print "Test concatenare siruri\n";
print b+c;
print b+c+D;
d="sir cu \"ghilimele\" in continut";
print d;
a="sir cu car escape linie noua \n corect?";
b="sir cu car escape tab oriz \t corect?";
print a;
print b;
c="Sir cu un car octal \101\n";
print c;
print "TESTARE OPERATORI\n";
d="sir cu \\ in continut";
print d;
print "d="+d;
d="abc";
print ++d;

d="abc";
e=++d;
print "++d cu atribuire: d="+d+" e="+e+"\n";
d="abc";
e=d++;
print "d++ cu atribuire: d="+d+" e="+e+"\n";
print "------------\n";

d="bcd";
e=--d;
print "--d cu atribuire: d="+d+" e="+e+"\n";
d="bcd";
e=d--;
print "d-- cu atribuire: d="+d+" e="+e+"\n";
print "------------\n";

b="ghjk";
c="fbcd";
print "test lungime:\n";
print ~b;

a="4DakP";
print ~a;

print "test multiplicare:\t"+"ab"*"3";
print "Testare operatori relationali\n";
print "sirul: "+"agh"+" este mai mic "+"fgh";
print "agh"<"fgh";
print "sirul: "+"ffgh"+" este mai mare "+"fgh";
print "ffgh">"fgh";
print "egalitate:";
print "fgh" == "fgh";
print "inegalitate:";
print "fgh" != "fgh";
print "mai mare sau egal:";
print "fgh" >= "fgh";
print "mai mic sau egal";
print "aghh" <= "fgh";
print "asffhjklh\"jk\101gg\\fff";
print "Test returnare subsir de inceput\n";
print "abcdef"#3;
print "Test diferenta siruri si lungime sir substras\n";
print "abcdefg"-"cd";
print ~("abcdefg"-"cd");
print ~("abc" + "kkk"); 
print "abc"*2-"b"-"b";
print "FELICITARI!\n";
</pre>

## The data from the out file -- text
<pre>
Testare declaratii

abc
kkkkkk
Test concatenare siruri

AB_+CSirul3
AB_+CSirul3Sirul3kkkkkk
sir cu "ghilimele" in continut
sir cu car escape linie noua 
 corect?
sir cu car escape tab oriz 	 corect?
Sir cu un car octal A

TESTARE OPERATORI

sir cu \ in continut
d=sir cu \ in continut
bbc
++d cu atribuire: d=abc e=bbc

d++ cu atribuire: d=abc e=bbc

------------

--d cu atribuire: d=bcd e=acd

d-- cu atribuire: d=bcd e=acd

------------

test lungime:

Lungimea sirului este 4(null)
Lungimea sirului este 5(null)
test multiplicare:	ababab
Testare operatori relationali

sirul: agh este mai mic fgh
1
sirul: ffgh este mai mare fgh
0
egalitate:
1
inegalitate:
0
mai mare sau egal:
1
mai mic sau egal
1
asffhjklh"jkAgg\fff
Test returnare subsir de inceput

abc
Test diferenta siruri si lungime sir substras

abefg
Lungimea sirului este 5(null)
Lungimea sirului este 6(null)
acac
FELICITARI!

</pre>

## The data from the out file -- graf
<pre>


Graph 1:

         print
           |
           |
           |
 c(Testare declaratii
)


Graph 3:

     [=]
      |
   |-----|
   |     |
 id(A) c(abc)


Graph 5:

 print
   |
   |
   |
 id(A)


Graph 7:

       [=]
        |
   |-------|
   |       |
 id(D) c(kkkkkk)


Graph 9:

 print
   |
   |
   |
 id(D)


Graph 11:

      [=]
       |
   |------|
   |      |
 id(B) c(AB_+C)


Graph 13:

       [=]
        |
   |-------|
   |       |
 id(C) c(Sirul3)


Graph 15:

            print
              |
              |
              |
 c(Test concatenare siruri
)


Graph 17:

    print
      |
      |
      |
     [+]
      |
   |-----|
   |     |
 id(B) id(C)


Graph 19:

       print
         |
         |
         |
        [+]
         |
      |--------|
      |        |
     [+]     id(D)
      |
   |-----|
   |     |
 id(B) id(C)


Graph 21:

                   [=]
                    |
   |-------------------|
   |                   |
 id(D) c(sir cu "ghilimele" in continut)


Graph 23:

 print
   |
   |
   |
 id(D)


Graph 25:

                       [=]
                        |
   |-----------------------|
   |                       |
 id(A) c(sir cu car escape linie noua 
 corect?)


Graph 27:

                      [=]
                       |
   |----------------------|
   |                      |
 id(B) c(sir cu car escape tab oriz 	 corect?)


Graph 29:

 print
   |
   |
   |
 id(A)


Graph 31:

 print
   |
   |
   |
 id(B)


Graph 33:

               [=]
                |
   |---------------|
   |               |
 id(C) c(Sir cu un car octal A
)


Graph 35:

 print
   |
   |
   |
 id(C)


Graph 37:

         print
           |
           |
           |
 c(TESTARE OPERATORI
)


Graph 39:

              [=]
               |
   |--------------|
   |              |
 id(D) c(sir cu \ in continut)


Graph 41:

 print
   |
   |
   |
 id(D)


Graph 43:

    print
      |
      |
      |
     [+]
      |
   |-----|
   |     |
 c(d=) id(D)


Graph 45:

     [=]
      |
   |-----|
   |     |
 id(D) c(abc)


Graph 47:

 print
   |
   |
   |
 [++]
   |
   |
   |
 id(D)


Graph 49:

     [=]
      |
   |-----|
   |     |
 id(D) c(abc)


Graph 51:

     [=]
      |
   |-----|
   |     |
 id(E) [++]
         |
         |
         |
       id(D)


Graph 53:

                      print
                        |
                        |
                        |
                       [+]
                        |
                     |-----------------------|
                     |                       |
                    [+]                     c(
)
                     |
                  |---------------------|
                  |                     |
                 [+]                  id(E)
                  |
               |-----------------|
               |                 |
              [+]              c( e=)
               |
            |--------------|
            |              |
 c(++d cu atribuire: d=) id(D)


Graph 55:

     [=]
      |
   |-----|
   |     |
 id(D) c(abc)


Graph 57:

     [=]
      |
   |-----|
   |     |
 id(E) [++]
         |
         |
         |
       id(D)


Graph 59:

                      print
                        |
                        |
                        |
                       [+]
                        |
                     |-----------------------|
                     |                       |
                    [+]                     c(
)
                     |
                  |---------------------|
                  |                     |
                 [+]                  id(E)
                  |
               |-----------------|
               |                 |
              [+]              c( e=)
               |
            |--------------|
            |              |
 c(d++ cu atribuire: d=) id(D)


Graph 61:

      print
        |
        |
        |
 c(------------
)


Graph 63:

     [=]
      |
   |-----|
   |     |
 id(D) c(bcd)


Graph 65:

     [=]
      |
   |-----|
   |     |
 id(E) [--]
         |
         |
         |
       id(D)


Graph 67:

                      print
                        |
                        |
                        |
                       [+]
                        |
                     |-----------------------|
                     |                       |
                    [+]                     c(
)
                     |
                  |---------------------|
                  |                     |
                 [+]                  id(E)
                  |
               |-----------------|
               |                 |
              [+]              c( e=)
               |
            |--------------|
            |              |
 c(--d cu atribuire: d=) id(D)


Graph 69:

     [=]
      |
   |-----|
   |     |
 id(D) c(bcd)


Graph 71:

     [=]
      |
   |-----|
   |     |
 id(E) [--]
         |
         |
         |
       id(D)


Graph 73:

                      print
                        |
                        |
                        |
                       [+]
                        |
                     |-----------------------|
                     |                       |
                    [+]                     c(
)
                     |
                  |---------------------|
                  |                     |
                 [+]                  id(E)
                  |
               |-----------------|
               |                 |
              [+]              c( e=)
               |
            |--------------|
            |              |
 c(d-- cu atribuire: d=) id(D)


Graph 75:

      print
        |
        |
        |
 c(------------
)


Graph 77:

      [=]
       |
   |------|
   |      |
 id(B) c(ghjk)


Graph 79:

      [=]
       |
   |------|
   |      |
 id(C) c(fbcd)


Graph 81:

       print
         |
         |
         |
 c(test lungime:
)


Graph 83:

 print
   |
   |
   |
  [~]
   |
   |
   |
 id(B)


Graph 85:

      [=]
       |
   |------|
   |      |
 id(A) c(4DakP)


Graph 87:

 print
   |
   |
   |
  [~]
   |
   |
   |
 id(A)


Graph 89:

               print
                 |
                 |
                 |
                [+]
                 |
           |----------------|
           |                |
 c(test multiplicare:	)    [*]
                            |
                          |----|
                          |    |
                        c(ab) c(3)


Graph 91:

               print
                 |
                 |
                 |
 c(Testare operatori relationali
)


Graph 93:

                   print
                     |
                     |
                     |
                    [+]
                     |
                  |--------------------|
                  |                    |
                 [+]                 c(fgh)
                  |
         |-----------------|
         |                 |
        [+]        c( este mai mic )
         |
     |--------|
     |        |
 c(sirul: ) c(agh)


Graph 95:

     print
       |
       |
       |
      [<]
       |
   |------|
   |      |
 c(agh) c(fgh)


Graph 97:

                    print
                      |
                      |
                      |
                     [+]
                      |
                   |---------------------|
                   |                     |
                  [+]                  c(fgh)
                   |
         |------------------|
         |                  |
        [+]         c( este mai mare )
         |
     |---------|
     |         |
 c(sirul: ) c(ffgh)


Graph 99:

     print
       |
       |
       |
      [>]
       |
    |------|
    |      |
 c(ffgh) c(fgh)


Graph 101:

     print
       |
       |
       |
 c(egalitate:)


Graph 103:

     print
       |
       |
       |
     [==]
       |
   |------|
   |      |
 c(fgh) c(fgh)


Graph 105:

      print
        |
        |
        |
 c(inegalitate:)


Graph 107:

     print
       |
       |
       |
     [!=]
       |
   |------|
   |      |
 c(fgh) c(fgh)


Graph 109:

         print
           |
           |
           |
 c(mai mare sau egal:)


Graph 111:

     print
       |
       |
       |
     [>=]
       |
   |------|
   |      |
 c(fgh) c(fgh)


Graph 113:

        print
          |
          |
          |
 c(mai mic sau egal)


Graph 115:

     print
       |
       |
       |
      [<=]
       |
    |------|
    |      |
 c(aghh) c(fgh)


Graph 117:

         print
           |
           |
           |
 c(asffhjklh"jkAgg\fff)


Graph 119:

                print
                  |
                  |
                  |
 c(Test returnare subsir de inceput
)


Graph 121:

     print
       |
       |
       |
      [#]
       |
     |------|
     |      |
 c(abcdef) c(3)


Graph 123:

                       print
                         |
                         |
                         |
 c(Test diferenta siruri si lungime sir substras
)


Graph 125:

      print
        |
        |
        |
       [-]
        |
     |--------|
     |        |
 c(abcdefg) c(cd)


Graph 127:

      print
        |
        |
        |
       [~]
        |
        |
        |
       [-]
        |
     |--------|
     |        |
 c(abcdefg) c(cd)


Graph 129:

     print
       |
       |
       |
      [~]
       |
       |
       |
      [+]
       |
   |------|
   |      |
 c(abc) c(kkk)


Graph 131:

         print
           |
           |
           |
          [-]
           |
        |----------|
        |          |
       [-]        c(b)
        |
      |-------|
      |       |
     [*]     c(b)
      |
   |-----|
   |     |
 c(abc) c(2)


Graph 133:

      print
        |
        |
        |
 c(FELICITARI!
)
</pre>
