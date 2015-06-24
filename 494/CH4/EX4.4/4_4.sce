//All the quantities are expressed in SI units

alpha = 5*%pi/180;            //angle of attack in radians

//from eq.(4.33)according to the thin plate theory, the lift coefficient is given by
c_l = 2*%pi*alpha;

//from eq.(4.39) the coefficient of moment about the leading edge is given by
c_m_le = -c_l/4;

//from eq.(4.41)
c_m_qc = 0;

//thus the coefficient of moment about the trailing can be calculated as
c_m_te = 3/4*c_l;

printf("\nRESULTS\n--------\n(a)\n  Cl = %1.4f\n(b)\n  Cm_le = %1.3f\n(c)\n  Cm_c/4 = %1.0f\n(d)\n  Cm_te = %1.3f\n",c_l,c_m_le,c_m_qc,c_m_te)