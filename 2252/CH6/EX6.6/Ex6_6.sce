
i=linspace(0,0,2)
t=linspace(0,1,2)
plot2d(t,i)
for j=0:3
    i=linspace(40+20*j,40+20*j,2)
    t=linspace(j+1,j+2,2)
    plot2d(t,i)
    if j==0 then
        t=linspace(j+1,j+1,2)
        i=linspace(0,40,2)
        plot2d(t,i)
    else 
        t=linspace(j+1,j+1,2)
        i=linspace(40+20*(j-1),40+20*j,2)
        plot2d(t,i)
    end
end
for j=1:3
    i=linspace(100-20*j,100-20*j,2)
    t=linspace(j+4,j+5,2)
    plot2d(t,i)
    i=linspace(100-20*(j-1),100-20*j,2)
    t=linspace(j+4,j+4,2)
    plot2d(t,i)
end
i=linspace(40,0,2)
t=linspace(8,8,2)
plot2d(t,i)
i=linspace(0,0,2)
t=linspace(8,9,2)
plot2d(t,i)
for j=0:3
    i=linspace(-(40+20*j),-(40+20*j),2)
    t=linspace(j+9,j+10,2)
    plot2d(t,i)
    if j==0 then
        t=linspace(j+9,j+9,2)
        i=linspace(0,-40,2)
        plot2d(t,i)
    else 
        t=linspace(j+9,j+9,2)
        i=linspace(-40-20*(j-1),-40-20*j,2)
        plot2d(t,i)
end
end
for j=1:3
    i=linspace(-(100-20*j),-(100-20*j),2)
    t=linspace(j+12,j+13,2)
    plot2d(t,i)
    i=linspace(-100+20*(j-1),-100+20*j,2)
    t=linspace(j+12,j+12,2)
    plot2d(t,i)
end
i=linspace(0,-40,2)
t=linspace(16,16,2)
plot2d(t,i)
xtitle("Periodic current wave for example 6.6","time in seconds","current")

//calculating average value for this wave shape
Iavg=(0+40+60+80+100+80+60+40)/8
mprintf("Average value of current of given wave shape=%f A\n",Iavg)
//calculating RMS value for the given wave shape
Irms=sqrt((0^2+40^2+60^2+80^2+100^2+80^2+60^2+40^2)/8)
mprintf("RMS value of current of given wave shape=%f A\n",Irms)
//calculating form factor
x=Irms/Iavg
mprintf("Form factor of given wave form=%f\n",x)
//calculating peak factor
Imax=100//maximum value of current wave
y=Imax/Irms
mprintf("Peak factor of given wave=%f\n",y)
//calculating average and RMS value of current considering the wave to be sinusoidal having peak value of 100 A
Iavg=integrate('100/%pi*sin(theta)','theta',0,%pi)
mprintf("Average value of sine wave=%f A\n",Iavg)
Irms=sqrt(integrate('(100*sin(theta))^2/%pi','theta',0,%pi))
mprintf("RMS value of sine wave=%f A",Irms)
