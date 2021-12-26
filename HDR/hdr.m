%HDR
image1 = imread('1.JPG');
image2 = imread('2.JPG');
image3 = imread('3.JPG');
image4 = imread('4.JPG');
image5 = imread('5.JPG');
image6 = imread('6.JPG');
images = {image1,image2,image3,image4,image5,image6};
montage(images)
exposure = [0.0333 0.1000 0.3333 0.6250 1.3000 4.0000];
relExposure = exposure./exposure(1);

hdr = makehdr(images);

rgb = tonemap(hdr);
imshow(rgb)