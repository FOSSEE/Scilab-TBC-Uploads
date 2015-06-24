disp('chapter 2 ex2.5')
disp('given')
disp("from 741 datasheet")
disp("Zo=75ohm")
disp("Mmax=200000")
Zo=75
Mmax=200000
disp("For an voltage follower beta=1")
b=1
Zout=Zo/(1+Mmax*b)
disp("Typical output impedence")
disp('ohms',Zout)