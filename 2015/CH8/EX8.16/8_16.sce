clc
//initialisation of variables
h1=272.763 //under 300 k temp in kj/kg
s1=6.4125 //under 300 k temp in kj/kg
h2=230.347 //under 200 k temp in kj/kg1
s2=4.9216 //under 300 k temp in kj/kg
hf=-133.347 //kj/kg
t1=300 //temp in k
//CALCULATIONS
y=(h1-h2)/(h1-hf)
mw=(t1*(s2-s1))-(h2-h1)
x=mw/0.1044
//RESULTS
printf('fraction of oxygen condensed is %2f',y)
printf('\nwork required is %2f',x) //answer is wrong in tb
