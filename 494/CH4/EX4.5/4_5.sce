//all the quantities are expressed in SI units

//(a)
//the slope function in terms of theta is given as
function temp = dz_by_dx(theta)
    if (theta>=0) & (theta<=0.9335) then
        temp = 0.684 - 2.3736*cos(theta)+1.995*(cos(theta)^2);
    elseif (theta<=%pi) & (theta>0.9335) then
        temp = -0.02208;
    else
        temp = 0;
    end
endfunction

//the integration function fot alpha,L=0 is thus given as
function temp = integ1(theta)
    temp = dz_by_dx(theta)*(cos(theta)-1);
endfunction

//from eq.(4.61)
alpha_L0 = -1/%pi*intg(0,%pi,integ1);

//(b)
alpha = 4*%pi/180;

//from eq.(4.60)
c_l = 2*%pi*(alpha-alpha_L0);

//(c)
//the integration function for A1 is given by
function temp = integ2(theta)
    temp = dz_by_dx(theta)*cos(theta);
endfunction

//thus
A1 = 2/%pi*intg(0,%pi,integ2);

//the integration function for A2 is given by
function temp = integ3(theta)
    temp = dz_by_dx(theta)*cos(2*theta);
endfunction

//thus
A2 = 2/%pi*intg(0,%pi,integ3);

//from eq.(4.64), the moment coefficient about the quarter chord (c/4) is given as
c_m_qc = %pi/4*(A2-A1);

//(d)
//from eq.(4.66)
x_cp_by_c = 1/4*(1+%pi/c_l*(A1-A2));

printf("\nRESULTS\n-------\n(a)\n        alpha_L=0 = %1.2f degrees\n(b)\n        cl = %1.3f\n(c)\n        cm,c/4 = %1.4f\n(d)\n        x_cp/c = %1.3f",alpha_L0*180/%pi,c_l,c_m_qc,x_cp_by_c)