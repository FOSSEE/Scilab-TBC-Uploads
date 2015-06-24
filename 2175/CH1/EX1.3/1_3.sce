clc;

heat_supplied=2800;//kJ/kg
heat_rejected=2100;//kJ/kg
sigma_dQ=heat_supplied-heat_rejected;

work_done=1000;
work_reqr=5;
sigma_dW=work_reqr-work_done;

m=-sigma_dW/sigma_dQ
disp("steam mass flow rate required is:");
disp("kg/s",m)
