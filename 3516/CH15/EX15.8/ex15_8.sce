printf("\t example 15.8 \n");
printf("\t approximate values are mentioned in the book \n");
//Dew point of Overhead
vc(1) = 6.4; // Mol/hr
vc(2) = 219.7; //Mol/hr
vc(3) = 2.3; //Mol/hr

K(1) = 2.8; //at 148°F and 40 psia
K(2) = 1.01; //at 148°F and 40 psia
K(3) = 0.34; //at 148°F and 40 psia

i=1;
while(i<4)
    v(i)=vc(i)/K(i);
    i=i+1;
end

printf("\n\t\tDEW POINT OF OVERHEAD");
printf("\n\t\tMol/hr\t\tK(148°F,40 psia)\tV/K\n");
printf("\t\t--------------------------------------------\n");
i=1;
while(i<4)
    printf("\tC"+string(i+3) + "\t%.1f\t\t%.1f\t\t\t%.1f\n",vc(i),K(i),v(i));
    i = i+1
end


bc(1)=4.1; //Mol/hr
bc(2)=49.3; //Mol/hr
bc(3)=71.9; //Mol/hr
bc(4)=52.5; //Mol/hr
bc(5)=54.7; //Mol/hr
bc(6)=82.5; //Mol/hr
bc(7)=76.6; //Mol/hr
bc(8)=22.4; //Mol/hr
tbc = 0;
i=1;
while(i<9)
    tbc = tbc+bc(i);
    i=i+1;
end

bK(1)=5.8; //at 330°F, 40 psia
bK(2)=3.0; //at 330°F, 40 psia
bK(3)=1.68; //at 330°F, 40 psia
bK(4)=0.98; //at 330°F, 40 psia
bK(5)=0.57; //at 330°F, 40 psia
bK(6)=0.35; //at 330°F, 40 psia
bK(7)=0.21; //at 330°F, 40 psia
bK(8)=0.13; //at 330°F, 40 psia

KL(1)=23.8;
KL(2)=148.0;
KL(3)=120.8;
KL(4)=51.4;
KL(5)=31.2;
KL(6)=28.9;
KL(7)=16.1;
KL(8)=2.9;
tk =0;
i=1;
while(i<9)
    tk = tk + KL(i);
    i=i+1;
end

l(1)=1700; //Lb/hr
l(2)=13900; //Lb/hr
l(3)=13030; //Lb/hr
l(4)=6260; //Lb/hr
l(5)=4240; //Lb/hr
l(6)=4330; //Lb/hr
l(7)=2640; //Lb/hr
l(8)=520; //Lb/hr

tl=0;
i=1;
while(i<9)
    tl = tl+l(i);
    i=i+1;
end

printf("\n\t\tBUBBLE POINTS OF BOTTOMS\n");
printf("\t\tMol/hr\t\tK(330°F,40psia)\t\tKL\t\tLb/hr\n");
printf("\t\t--------------------------------------------------------------\n");
i=1;
while(i<9)
    printf("\tC"+string(i+4)+"\t%.1f\t\t%.2f\t\t\t%.1f\t\t%.0f\n",bc(i),bK(i),KL(i),l(i));
    i=i+1;
end
printf("\t\t____\t\t\t\t\t____\t\t____\n");
printf("\t\t%.1f\t\t\t\t\t%.1f\t\t%.0f\n",tbc,tk,tl);
av = tl/tk;
printf("\tAverage mol. wt. %.1f\n",av);

lh(1)=48894;//Lb/hr
lh(2)=16298;//Lb/hr
lh(3)=32596;//Lb/hr
bl(1)=286;//Btu/hr
bl(2)=129;//Btu/hr
bl(3)=129;//Btu/hr
i=1;
while(i<4)
    bh(i)=lh(i)*bl(i); //Btu/hr
    i=i+1;
end

//Heat Balances
printf("\n\n\t\t\t\t\t\tHEAT BALANCES:");
printf("\n\t\t\t\tMol/hr\t\tMol.wt.\t\tLb/hr\t\tTemp,°F\t\tBtu/lb\t\tBtu/hr\n\t");
printf("\t\t\t----------------------------------------------------------------------------------------");
printf("\n\tHeat Balance onCondeser\n\t  Heat in:\n\t   Top plate vapor......");
printf("685.2\t\t71.3\t\t" + string(lh(1)) + "\t\t148\t\t" +string(bl(1)) + "\t\t" + string(bh(1)) + "\n");
printf("\t  Heat out:\n\t   Distillate...........");
printf("228.4\t\t71.3\t\t" + string(lh(2)) + "\t\t124\t\t" +string(bl(2)) + "\t\t" + string(bh(2)) + "\n");
printf("\t   Reflux, (2-1)........");
printf("456.8\t\t71.3\t\t" + string(lh(3)) + "\t\t129\t\t" +string(bl(3)) + "\t\t" + string(bh(3)) + "\n");
printf("\t   Condenser duty, by\n\t    difference......... ");
printf(".....\t\t.....\t\t.....\t\t.....\t\t......\t\t7680000\n");
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t________\n");
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t"+string(bh(1))+"\n");
//Heat Balances on reboiler
//Assume 30° difference between reboiler and bottom plate giving bottom-plate temperature of 300°F
//Mol/hr from Eq. 15.47
rl(1)=78177;//Lb/hr
rl(2)=22700;//Lb/hr
rl(3)=55477;//Lb/hr
rb(1)=234;//Btu/lb
rb(2)=369;//Btu/lb
rb(3)=256;//Btu/lb

i=1;
while(i<4)
    rr(i)=rl(i)*rb(i);//Btu/hr
    i=i+1;
end
tt = rr(1)+4280000;// Btu/hr
printf("\t\t\t\t\t\tHEAT BALANCES on reboiler:");
printf("\n\tHeat in:\n\t  Trapout...............");
printf("619.7\t\t126.6\t\t"+string(rl(1))+"\t\t300\t\t"+string(rb(1))+"\t\t%.2e\n",rr(1));
printf("\t  Reboiler duty........");
printf(" .....\t\t.....\t\t......\t\t...\t\t...\t\t4280000\n");
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t________\n");
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t%.3e",tt);
printf("\n\tHeat out:\n\t  Reboiler vapor........");
printf("205.7\t\t110.3\t\t"+string(rl(2))+"\t\t330\t\t"+string(rb(2))+"\t\t%.2e\n",rr(2));
printf("\t  Reboiler vapor........");
printf("414.0\t\t134.0\t\t"+string(rl(3))+"\t\t330\t\t"+string(rb(3))+"\t\t%.2e\n",rr(3));
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t________\n");
printf("\t\t\t\t\t\t\t\t\t\t\t\t\t\t%.3e",rr(2)+rr(3));

//y*
pc(1)=0.056;
pc(2)=0.350;
pc(3)=0.285;
pc(4)=0.122;
pc(5)=0.074;
pc(6)=0.068;
pc(7)=0.038;
pc(8)=0.007;

//K(300°F,40psia)
pK(1)=4.5;
pK(2)=2.25;
pK(3)=1.20;
pK(4)=0.66;
pK(5)=0.38;
pK(6)=0.22;
pK(7)=0.13;
pK(8)=0.07;

printf("\n\n\t\tCALCULATION OF BOTTOM PLATE TEMPERATURE\n");
printf("\t\ty*\t\t\tReboiler vapor\t\t\t\tK(300°F,40psia)\tMol*K\n\t\t\t\tV = y*205.7 +\tBottoms\t=\tTrapout\n");
printf("\t\t----------------------------------------------------------------------------------------\n");

i=1;
pcs=0;
pc2=0;
bcs=0;
tcs=0;
gg=0;
while(i<9)
    temp = pc(i)*205.7;
    temp2 = temp + bc(i);
    printf("\tC"+ string(i+4)+ "\t" +string(pc(i))+ "\t\t%.1f\t\t" + string(bc(i))+"\t\t%.1f\t\t"+string(pK(i))+"\t\t%.2f\n",temp,temp2,temp2*pK(i));
    
    pcs=pcs+pc(i);
    pc2=pc2+temp;
    bcs=bcs+bc(i);
    tcs=tcs+temp2;
    gg=gg+(temp2*pK(i));
    i=i+1;
end
printf("\t\t----------------------------------------------------------------------------------------\n");
printf("\t\t%.3f\t\t%.1f\t\t%.1f\t\t%.1f\t\t\t\t%.1f\n",pcs,pc2,bcs,tcs,gg);
printf("\n\tReboiler requirements are\n");
printf("\t\tVaporization\t\t\t22700 lb/hr\n\t\tTotal liquor to reboiler\t78177 lb/hr\n\t\tHeat load\t\t\t4280000 Btu/hr\n\t\tTemperature range\t\t300-330°F\n\t\tOperating pressure\t\t40psia")
//end
