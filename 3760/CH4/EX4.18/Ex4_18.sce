clc;
vt1=50; // terminal voltage
rf=100; // resistance of field circuit
n1=1000; // speed corresponding to vt1=50
vt2=225; // terminal voltage
n2=2000; // speed corresponding to vt2=225 
vt3=405; // terminal voltage
n3=3000; // speed corresponding to vt3=405
disp('case a');
ifl1=vt1/rf; // field current for n=1000 rpm
ifl2=vt2/rf; // field current for n=2000 rpm
ifl3=vt3/rf; // field current for n=3000 rpm
printf('Field current for speed=%f rpm is %f A\n',n1,ifl1);
printf('Field current for speed=%f rpm is %f A\n',n2,ifl2);
printf('Field current for speed=%f rpm is %f A\n',n3,ifl3);
vt11=vt1*(n2/n1);
printf('Terminal voltage=%f V at %f rpm is equivalent to %f V at %f rpm\n',vt1,n1,vt11,n2);
vt33=vt3*(n2/n3);
printf('Terminal voltage=%f V at %f rpm is equivalent to %f V at %f rpm\n',vt3,n3,vt33,n2);
disp('Using above data, magnetising curve is drawn for n=2000 rpm');
// from fig 4.37
disp('For field resistance=80 ohms terminal voltage is given by BC');
disp('BC=253, hence terminal voltage corresponding to field resistance of 80 ohms is 253 V');
disp('For field resistance=70 ohms terminal voltage is given by QP');
disp('QP=268, hence terminal voltage corresponding to field resistance of 70 ohms is 268 V');
