// Display gain and phase margins on a bode plot

function [gm,gcrf,pm,pcrf] = shmargins(G)

  show_margins(G,'bode');
  xtitle('Bode diagram','rad/s');
  a = gcf();set(a.children(2).x_label,'text','rad/s');

  [gm pcrf] = g_margin(G);
  [pm gcrf] = p_margin(G);
  disp(gcrf,'Gain crossover frequency = ',pm,'Phase margin (degrees)= ');
  disp(pcrf,'Phase crossover frequency = ',gm,'Gain margin (dB) = ');
endfunction
