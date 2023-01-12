%RS data for t=3um_ethanol

rel_3_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2
];

%FUNDAMENTAL MODE imaginary part
Re_eff003=[
   1.284405184997065
   1.2941263070926445       
   1.3020897529007658       
   1.3086830516196337       
   1.3141949995195454       
   1.318846755191269        
   1.3228060089007068       
   1.3262018334740548       
   1.3291383169651867       
   1.3316921859902944       
   1.3339277700129863       
   1.3358961108522573       
];


PF003=[
    88.12354395113504
    89.76992556727945       
    91.01336769546436       
    91.97346919432132       
    92.72851896646136       
    93.33177978798739       
    93.81999748261612       
    94.21918629035789       
    94.5485526780227        
    94.8216602371111        
    95.0490283662895        
    95.23857883893163       
];

for j=1:length(rel_3_lam1)    
rel_sen003(j,1)=((1.357/Re_eff003(j,1))*PF003(j,1));
end

  x=1.1:0.000005:2.2;
  y=interp1(rel_3_lam1,rel_sen003,x,'spline');
plot(rel_3_lam1,rel_sen003,'.w',x,y,'LineWidth',2.3);
hold on


%RS data for t=5um_ethanol

rel_4_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2
];

%FUNDAMENTAL MODE imaginary part
Re_eff004=[
    1.2848723275410223
    1.2945843512385564       
    1.30253916105768         
    1.3091246565207075       
    1.3146297768353827       
    1.3192757072089882       
    1.3232301135314941       
    1.3266220221945144       
    1.3295571069053933       
    1.3321071168253475       
    1.3343412603205176       
    1.3363088947492665       
   ];

PF004=[
    87.55465037920266
    89.19717827542658       
    90.43762991526991       
    91.39477411069123       
    92.1464229378651        
    92.74555690977023       
    93.22875018358506       
    93.62190770259887       
    93.94432715523604       
    94.20899075542483       
    94.42688754750971       
    94.60570913241546       
];

for j=1:length(rel_4_lam1)    
rel_sen004(j,1)=((1.357/Re_eff004(j,1))*PF004(j,1));
end

  x=1.1:0.000005:2.2;
  y=interp1(rel_4_lam1,rel_sen004,x,'spline');
plot(rel_4_lam1,rel_sen004,'.w',x,y,'LineWidth',2.3);
hold on


%RS data for t=7um_ethanol

rel_5_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2
];

%FUNDAMENTAL MODE imaginary part
Re_eff005=[
    1.2853586015025644
    1.2950630349189274       
    1.3030106415218368       
    1.309589725438679        
    1.3150893953460867       
    1.3197308850399578       
    1.323681853945506        
    1.327071297126291        
    1.3300032037325145       
    1.3325542126564038       
    1.3347885675995679       
    1.3367572385934445       
];


PF005=[
   86.95390981388987
   88.58952809760116       
   89.82389746841939       
   90.77490104410688       
   91.51982797707671       
   92.11133424859507       
   92.58578404505888       
   92.96893681662916       
   93.27978972470937       
   93.53176166176838       
   93.73521791779514       
   93.8979277485383        
];

for j=1:length(rel_5_lam1)    
rel_sen005(j,1)=((1.357/Re_eff005(j,1))*PF005(j,1));
end

  x=1.1:0.000005:2.2;
  y=interp1(rel_5_lam1,rel_sen005,x,'spline');
plot(rel_5_lam1,rel_sen005,'.w',x,y,'LineWidth',2.3);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
xlabel('Frequency(THz)','FontSize',16);
ylabel('Relative sensitivity (%)','FontSize',16);
set(gca,'FontSize',18); % size of tick marks on both axes
legend(' ','t=3\mum, W=254\mum',' ','t=5\mum, W=250\mum(optimum)',' ','t=7\mum, W=246\mum');
set(legend,'color','none');
%ylim([86 100]);
xlim([1.1 2.2]);
grid on