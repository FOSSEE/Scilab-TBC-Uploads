//Example 6_27 page no:356
clc;
max_demand = 175;//in kW
pow_fac = 0.75;
max_tariff = 72;//in rupees
tariff = 10;//in paise
phase_adv = 120;//in rupees/kVA
loss = 20;//in percentage
kVA_demand = max_demand / pow_fac;
max_demand_charge = max_tariff * kVA_demand;
cos_phi = sqrt(1-((phase_adv * loss)/(max_tariff * 100))^2);
disp(kVA_demand,"before installation of capacitors the kVA demand is (in kVA)");
disp(max_demand_charge,"the maximum demand charge is (in rupees)");
disp(cos_phi,"the power factor is ");
//the kVA_demand is rounded off in textbook so maximum demand charge vary slightly with textbook
