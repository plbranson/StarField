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

final class Star {

  // The x, y, & z positions
  private float x, y, z;

  // The previous z-axis position
  private float pz;

  Star() {
    this.x = random(-width / 2, width / 2);
    this.y = random(-height / 2, height / 2);
    this.z = random(width / 2);
    this.pz = z;
  }

  void update() {
    // Note: The speed variable is a global variable defined in StarField.pde
    // It is used to mark the speed at which the star moves through the star field
    this.z -= speed;

    if (z < 1) {
      this.x = random(-width / 2, width / 2);
      this.y = random(-height / 2, height / 2);
      this.z = random(width / 2);
      this.pz = z;
    }
  }
  
  void show() {
    fill(255);
    noStroke();
    
    float sx = map(this.x / this.z, 0, 1, 0, width / 2);
    float sy = map(this.y / this.z, 0, 1, 0, height / 2);
    
    float range = map(this.z, 0, width / 2, 4, 0);
    ellipse(sx, sy, range, range);
    
    float px = map(this.x / this.pz, 0, 1, 0, width / 2);
    float py = map(this.y / this.pz, 0, 1, 0, height / 2);
    
    line(px, py, sx, sy);
    stroke(255);
    
    this.pz = this.z;
  }
}
