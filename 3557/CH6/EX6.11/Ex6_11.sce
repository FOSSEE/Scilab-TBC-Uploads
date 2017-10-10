//Example 6.11//
s=125;//ksi
s=95;//ksi
s=65;//ksi
T=540;//degree C
T=595;//degree C
T=650;//degree C
x=[540 595 650]
y=[125 95 65 ]
plot2d(x,y, style=1)
ylabel("stress (ksi)","fontsize",2 );
xlabel("T(degree C)")
mprintf(" T = 585 degree C")
