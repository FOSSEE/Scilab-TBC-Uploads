//Example 10.6//

//Jominy end squench test on this alloy produces a hardness of Rockwell C45 at 22/16 in from the quenched end which is equal
a=22;//in
b=16;//in
c=25.4;//mm/in
Dqe=(a/b)*c
mprintf("Dqe = %i mm",Dqe)

x=[0 2 4 6 8 10 15 20 25 30 40 50];
y=[600 300 150 70 50 20 15 10 6 5 3 2];
plot2d(x,y, style=1);
xlabel("Distance from quenched end ,Dqe (Jominy distance)", "fontsize", 3)
ylabel("Cooling rate at 700 degree C C/sec ", "fontsize", 3)
mprintf("\nFrom the figure which applies  to carbon and low-alloy steels,we see that the cooling rate was approximately \n 4 degree C/s (at 700 degree C) ")
