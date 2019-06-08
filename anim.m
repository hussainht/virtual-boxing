function [ output_args ] = anim(XData)
%Uses X Data to create images at the boxers current current location.
%One by one the images will be imported and set to invisible. This will
%give the look of an animation.
[im, map, alpha] = imread('images\\movopp1.png');
boxer1 = image(im);
set(boxer1, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer1,'Visible','off')


[im, map, alpha] = imread('images\\movopp2.png');
boxer2 = image(im);
set(boxer2, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer2,'Visible','off')


[im, map, alpha] = imread('images\\movopp3.png');
boxer3 = image(im);
set(boxer3, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer3,'Visible','off')


[im, map, alpha] = imread('images\\movopp4.png');
boxer4 = image(im);
set(boxer4, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer4,'Visible','off')


[im, map, alpha] = imread('images\\images\\movopp5.png');
boxer5 = image(im);
set(boxer5, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer5,'Visible','off')


[im, map, alpha] = imread('images\\movopp6.png');
boxer6 = image(im);
set(boxer6, 'AlphaData', alpha,'XData',XData,'YData',[180 180]);
pause(0.05)
set(boxer6,'Visible','off')


end
