
    public void draw() {
        hint(DISABLE_DEPTH_TEST);
        noFill();
        sphereDetail(20);
        translate(width / 2, height / 2);
        IntStream.rangeClosed(1, 10).forEach(i -> {
            translate(0, 0, 2 * i);
            rotateZ(sin(millis() * 0.00001) * TWO_PI);
            rotateY(cos(millis() * 0.000122) * TWO_PI);
            pushMatrix();
            rotateX(radians(i * 13));
            translate(2 * i, 15 * i, 0);
            stroke(255,150);
//            stroke(255 - (i * 107 % 255), i * 33 % 255, i * 57 % 250);
//            rect(-width/2,0,width, 1);
//            sphereDetail((i + 3) % 12);
            sphere(20 + (i * 30 * sin(millis() * 0.001) % 100));
            popMatrix();
        });
    }
    
