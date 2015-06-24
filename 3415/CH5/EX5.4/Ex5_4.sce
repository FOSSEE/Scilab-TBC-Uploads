//fiber optic communications by joseph c. palais
//example 5.4
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
led_output_power=2//led output power in dBm
fiber_loss=0.5//fiber loss /dB
receiver_sensitivity=30//receiver sensitivity in dBm
coupling_loss=16//coupling loss in dB
connector_and_splices=6//connector and splices loss in dB
power_margin=4//power margin in dB
//to find
loss_budget=led_output_power+receiver_sensitivity;//loss budget in dB
total_losses=coupling_loss+connector_and_splices+power_margin;//total losses in dB
available_fibre_loss=loss_budget-total_losses;//available fibre loss in dB
maximum_allowable_fibre =available_fibre_loss/fiber_loss;//maximum allowable fibre length in Km
mprintf(' Maximum allowable fibre length=%fKm',maximum_allowable_fibre)
