

//example 4.47
//calculate average depth of precipitation using depth area curve
clc;funcprot(0);
//given
I=[21:-1:12];          //isohytes
a=[543 1345 2030 2545 2955 3280 3535 3710 3880 3915];  //enclosed area
ia(1)=543;
for i=2:10
    ia(i)=a(i)-a(i-1);              //net incremental area between isohytes
end
r=[21.5:-1:12.5]
for i=1:10
    rv(i)=r(i)*ia(i);               //rainfall volume
end
cv(1)=11675;
for i=2:10
    cv(i)=cv(i-1)+rv(i);            //cumulative volume
end
for i=1:10
    eud(i)=cv(i)/a(i);               //depth(mm)
end

mprintf("From depth area curve we obtain average depth of precipitation=20.15 mm for an\narea of 2400 sq. km.");
//graph is plotted between eud and a
