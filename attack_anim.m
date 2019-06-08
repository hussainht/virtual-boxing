%Uses images to create an image by importing one setting it to invisible
%and importing another after that.

[im, map, alpha] = imread('images\\hitme1.png');
hitme1 = image(im);
set(hitme1, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme1,'Visible','off')

[im, map, alpha] = imread('images\\hitme2.png');
hitme2 = image(im);
set(hitme2, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme2,'Visible','off')

[im, map, alpha] = imread('images\\hitme3.png');
hitme3 = image(im);
set(hitme3, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme3,'Visible','off')

[im, map, alpha] = imread('images\\hitme4.png');
hitme4 = image(im);
set(hitme4, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme4,'Visible','off')

[im, map, alpha] = imread('images\\hitme5.png');
hitme5 = image(im);
set(hitme5, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme5,'Visible','off')

[im, map, alpha] = imread('images\\hitme6.png');
hitme6 = image(im);
set(hitme6, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme6,'Visible','off')

[im, map, alpha] = imread('images\\hitme7.png');
hitme7 = image(im);
set(hitme7, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme7,'Visible','off')

[im, map, alpha] = imread('images\\hitme8.png');
hitme8 = image(im);
set(hitme8, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme8,'Visible','off')

[im, map, alpha] = imread('images\\hitme9.png');
hitme9 = image(im);
set(hitme9, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme9,'Visible','off')

[im, map, alpha] = imread('images\\hitme10.png');
hitme10 = image(im);
set(hitme10, 'AlphaData', alpha,'YData',[40 40],'XData',[90 90]);
pause(0.03)
set(hitme10,'Visible','off')

