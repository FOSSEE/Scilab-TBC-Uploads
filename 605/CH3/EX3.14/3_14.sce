//data
q=2   //m
B=%pi    //rad/m
d1=.4     //m
Z2=1      
S=2.4     
//formula and result
printf("\nresult:-")
Z_L=complex(1,-S*tan(B*d1))/complex(S,-tan(B*d1))
disp(Z_L,"Z_L=")
disp(Z_L*100,"ZL=")