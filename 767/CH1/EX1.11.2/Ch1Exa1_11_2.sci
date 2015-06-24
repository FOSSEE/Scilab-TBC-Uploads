// Scilab code Exa 1.11.2 : To determine distances between the isotopic Ar ions in Bainbridge mass spectrograph : Page 41 (2011)
amu = 1.673e-027; // Atomic mass unit, kg
E = 5e+04; // Electric field, V/m
B1 = 0.4; // Magnetic field, tesla
v = E/B1; // Velocity of ions, m/s
B = 0.8; // Magnetic field, tesla
e = 1.602e-019; //charge of electron,C
m_Ar = zeros(1,3);    // Array of masses of three Ar ions, amu
m_Ar(1,1) = 36,m_Ar(1,2) = 38,m_Ar(1,3) = 40; // Masses of three isoptopes of Ar, amu
r_Ar = zeros(1,3);    // Array of radii of three Ar ions, mm
for i = 1:1:3
    r_Ar(1,i) = (m_Ar(1,i)*amu*v)/(B*e)*1e+03; // Radius of Ar ion orbit, mm
    disp(r_Ar(1,i));    
end
d1 = 2*(r_Ar(1,2)-r_Ar(1,1));    // Distance b/w first and second line, mm
d2 = 2*(r_Ar(1,3)-r_Ar(1,2));    // Distance b/w second and third line, mm
printf("\nThe distance between successive lines due to three different isotopes : %3.1f mm and %3.1f mm", d1,d2);

// Result
// The distance between successive lines due to three different isotopes : 6.5 mm and 6.5 mm