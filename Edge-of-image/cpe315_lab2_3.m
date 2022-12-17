% ---- Original -----
    % Image echart
        clc;
        load('echart.mat');
        subplot(2,2,1), show_img(echart,1,1)

% ---- Edge Detection Filters -----
    % Filter to Detect Horizontal edges
        gx = [-1 0; 0 1];  % Roberts Cross 2x2
    % Filter to detect Vertical edges
        gy = [0 -1; 1 0];  % Roberts Cross 2x2
    % Convolution
        vert_ = conv2(echart, gx, 'same');
        hor_ = conv2(echart, gy, 'same');
    % G(x,y)
        final_echart = sqrt(vert_.^2 + hor_.^2);
        final_echart = uint8(final_echart);
        final_echart = 255 - final_echart;
    % Edge Image echart
        subplot(2,2,2), imshow(final_echart)

% ---- Edge Detection Filters -----
    % Filter to Detect Horizontal edges
        gx2 = [0 -1 0; -1 4 -1; 0 -1 0];
    % Convolution
        final_echart1 = conv2(echart, gx2,"same");
    % G(x,y)   
        final_echart1 = 255 - final_echart1;
    % Edge Image echart    
        subplot(2,2,3), imshow(uint8(final_echart1));
      
% ---- Edge Detection Filters -----
    % Filter to Detect Horizontal edges
        gx2 = [0 1 0; 1 -4 1; 0 1 0];
    % Convolution
        final_echart1 = conv2(echart, gx2,"same");
    % G(x,y)   
        final_echart1 = 255 - final_echart1;
    % Edge Image echart    
        subplot(2,2,4), imshow(uint8(final_echart1));

