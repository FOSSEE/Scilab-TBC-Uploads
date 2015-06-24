values = [42 50 32 55 9 12];
percentages = values*100 / sum(values);
new_text = string(percentages);
text = ["Lung ", "Breast ", "Colon ", "Prostate ", "Melanoma ", "Bladder "];
percentage_sign = ["%", "%", "%", "%", "%", "%"];
final_text = text + new_text + percentage_sign;
//pie([42 50 32 55 9 12], ["Lung", "Breast", "Colon", "Prostate", "Melanoma", "Bladder"]);
pie(values , final_text);
