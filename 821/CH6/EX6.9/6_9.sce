AN=0.096;//normality of H2SO4 in aqua layer//
ON=0.014;//normality of H2SO4 in org. layer//
AV=13.3;//amount of H2SO4 required in aq. layer for neutralization//
OV=7.15;//amount of H2SO4 requred in org. layer for neutralization//
AS=AN*AV/10;//strength of NH3 in aq. layer//
printf('Strength of NH3 in aq. layer=AS=%fN.',AS);
OS=ON*OV/20;//strength of NH3 in org. layer//
printf('\nStrength of NH3 in org. layer=OS=%fN.',OS);
K=AS/OS;//equilibrium constant//
printf('\nEquilibrium constant=K=%f',K);
AV1=20.0;//amount of H2SO4 required in aq. layer at equilibrium//
OV1=8.0;//amount of H2SO4 required in org. layer at equilibrium//
AN1=AV1*AN/5;//Normality of NH3 in aq. layer//
printf('\nNormality of NH3 in aq. layer=AN1=%fN.',AN1);
ON1=OV1*ON/10;//Normality of NH3 in org. layer//
printf('\nNormality of NH3 in org. layer=ON1=%fN.',ON1);
printf('\nIn the aq.layer NH3 includes the free ammonia(uncombined).\nNH3t and that which has combined with Cu2+ to form the complex ion NH3.');
printf('\nNH3aq=NH3t+NH3combined.\nThe value of NH3t can be obtained from the value of K.\nK=25.49=NH3t/NH3combined.');
NH3t=K*ON1;
printf('\nSince nernsts law holds good for the same species present in both phases.\nNH3t=%f=0.2855N.',NH3t);
NH3c=AN1-NH3t
printf('\nNH3c=%f=0.0985N',NH3c);
printf('\n0.025mol per litre of Cu2+ combines with 0.0985mol per litre of NH3.\n1 mol per litre of Cu2+ combines with 0.0985/0.025=3.936mol per litre of NH3.');
printf('\nor 1mol of Cu2+ combines with 4mol of NH3,i.e the value of x is 4.\nThe formula of the complex ion is thus (Cu(NH3)4)2+');
