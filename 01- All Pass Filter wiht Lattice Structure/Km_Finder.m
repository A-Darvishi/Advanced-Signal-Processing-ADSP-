clear
clc
format rational
%%
disp("****************************************************************")
disp("*  Enter the Coefficients of Bm")
disp("*  If you want to use defaul coefficients just press 'Ent' key ")
disp("*  Default is B = [1   5/6   1/6]")
B = input("* ------->   Enter Cefficents or pass:  ");
disp("****************************************************************")
disp("****************************************************************")
if isempty(B) == true
    B = [1,5/6,1/6];
end
%% Initial Step
disp("Bm =")
disp(B)
Km = B(end)/B(1);
disp("Km = ")
disp(Km)
disp("****************************************************************")
%% Start Loop
m = length(B);
for i=1:m-1
    B_tild = B(length(B):-1:1);
    B_axu = B - Km.*B_tild;
    B = B_axu(B_axu ~= 0);
    % B = zeros(1,m-1);
    % for j=1:length(B)
    %     B(j) = B_axu(j);
    % end
    %--------------------------
    disp("Bm =")
    disp(B)
    Km = B(end)/B(1);
    disp("Km = ")
    disp(Km)
    disp("****************************************************************")
end