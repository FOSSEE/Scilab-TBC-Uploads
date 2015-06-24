//All the quantities are expressed in SI units

alpha1 = 4;
alpha2 = -1.1;
alpha3 = -4;
cl_1 = 0.55;                //cl at alpha1
cl_2 = 0;                   //cl at alpha2
c_m_qc1 = -0.005;           //c_m_qc at alpha1
c_m_qc3 = -0.0125;          //c_m_qc at alpha3

//the lift slope is given by
a0 = (cl_1 - cl_2)/(alpha1-alpha2);

//the slope of moment coefficient curve is given by
m0 = (c_m_qc1 - c_m_qc3)/(alpha1-alpha3);

//from eq.4.71
x_ac = -m0/a0 + 0.25;

printf("\nRESULTS\n--------\nThe location of the aerodynamic center is\n            x_ac = %1.3f\n",x_ac)