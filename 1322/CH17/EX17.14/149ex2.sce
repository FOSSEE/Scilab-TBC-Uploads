
//(2*x-1)(x+2)(3-x)>0
clear;
clc;
close;
x=string(-4:5);//by number line method
n=string('<'+strcat(x,'~~~')+'>')  //-2 to 7 no. line
n1='<';n2='';
    for x=-4:1
      n1=n1+'----';
    end
       for x=0.5:5
      n2=n2+'++++';
    end
    mprintf(n1+n2+'>'+'     '+'(2x-1)')    
n1='<';n2='';    
      for y=-4:-2
     n1=n1+'----';
    end
       for y=-2:5
      n2=n2+'++++';
    end
    mprintf(n1+n2+'>'+'     '+'(x+2)')    
n1='<';n2='';    
      for y=-4:3
     n1=n1+'++++';
    end
       for y=3:5
      n2=n2+'----';
    end
    mprintf(n1+n2+'>'+'     '+'(3-x)'+'\n') 
    mprintf("the solution  is  0.5<x<3 \n or  \n x<-2")
