% ---- Original -----
    % Image echart
        clc;
        load('moon2.mat');
        subplot(2,2,1), show_img(M,1,1)

% ---- Image sharpening -----
    % Filter to Detect Horizontal edges
        sharpenFilter = [0 -1 0; -1 4 -1; 0 -1 0];
    % Convolution and Edge Image moon
        C = uint8(conv2(M,sharpenFilter,"same"));
    % Image sharpening Moon  
        D = uint8(M)+C;

        subplot(2,2,2), imshow(M)
        subplot(2,2,3), imshow(C)
        subplot(2,2,4), imshow(D)