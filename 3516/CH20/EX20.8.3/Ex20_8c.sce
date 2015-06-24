printf("\t example 20.8c \n");
printf("\t approximate values are mentioned in the book \n");
m=270; // cfm
t1=70;
t2=120; 
L=1.5; // ft
B=1.5; // ft
c=0.25
row=0.075; // lb/ft^3
Q=(m*row*60*c*(t2-t1));
printf("\t heat : %.2e Btu \n",Q);
V=(m/(L*B*60)); // fps
printf("\t velocity is : %.0f fps \n",V);
printf("\t Refer to Fig.20.22a.The air is capable of removing 33watts/in which is the maximum dissipation which may be expected. Any group of heaters providing 5 kw which do not require a dissipation of more than 33 w/in. and which will fit into the duct will be satisfactory \n");
printf("\t Thus in Table 20.3 elements of 350 watts with a total length each of 18 in. each are satisfactory \n");
// end
