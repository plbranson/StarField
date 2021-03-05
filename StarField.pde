/**
 * Copyright 2021 Patrick L. Branson
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
float speed;
 
Star[] stars = new Star[750];
 
void setup() {
  surface.setSize(640, 360);
  surface.setTitle("Star Field");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  
  for (int index = 0; index < stars.length; ++index) {
    stars[index] = new Star();
  }
}

void draw() {
  speed = map(mouseX, 0, width, 0, 50);
  
  background(0);
  translate(width / 2, height / 2);
  
  for (int index = 0; index < stars.length; ++index) {
    stars[index].update();
    stars[index].show();
  }
}
