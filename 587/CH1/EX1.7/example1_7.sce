clear;
clc;

//Example1.7[Conversion between SI and English Units]
W_to_btu_p_h=3.41214;//Conersion from Watt to btu per hour[btu/h]
m_to_ft=3.2808;//Conversion from meter to english unit feet[ft]
deg_C_to_deg_F=1.8;//Conversion from degree Celcius to degree Farenhiet
W_per_m_deg_C=W_to_btu_p_h/(m_to_ft*deg_C_to_deg_F);//Conversion factor for 1W/m.degree Celcius[Btu/h.ft.degree Farenhiet]
k_brick=0.72*W_per_m_deg_C;//[Btu/h.ft.degree Farenhiet]
disp("Btu/h.ft.degree Farenhiet",k_brick,"The thermal conductivity of the brick in English units is")
