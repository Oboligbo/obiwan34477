class ShapeFactory {
  PShape basicPlayer;
  PShape basicEnemy;
  PShape basicBullet;
  PShape enemyTwo;

  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;

  ShapeFactory() {
    noStroke();
    buildBasicEnemy();
    buildBasicPlayer();
    buildEnemyTwo();
    buildBasicBullet();
  }
  PShape getBasicBullet() { 
    return basicBullet;
  }
  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }
  PShape getEnemyTwo() { 
    return enemyTwo;
  }

  int getBasicBulletRadius() { 
    return basicBulletRadius;
  }
  int getBasicEnemyRadius() { 
    return basicEnemyRadius;
  }  
  int getBasicPlayerRadius() { 
    return basicPlayerRadius;
  }

  void buildBasicPlayer() {
    basicPlayerRadius=30;
    basicPlayer= createShape(GROUP);
    PShape chassis =createShape();
    chassis.beginShape();
    chassis.noStroke();
    chassis.fill(188,48,9);
    chassis.strokeWeight(2);
    chassis.vertex(0, -100);
    chassis.vertex(60, -40);
    chassis.vertex(30, -40);
    chassis.vertex(20, -10);
    chassis.vertex(10, 10);
    chassis.vertex(0, 7);
    chassis.vertex(-10, 10);
    chassis.vertex(-20, -10);
    chassis.vertex(-30, -40);
    chassis.vertex(-60, -40);
    chassis.vertex(0, -100);
    chassis.endShape();
    fill(19,220,220);
    PShape cockpit=createShape(ELLIPSE, -8, -90, 17, 23);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
  }
   void buildBasicBullet() {
    basicBulletRadius = 20;
    basicBullet = createShape(ELLIPSE, -10, -10, 20, 20);
    basicBullet.setStroke(color(255));
    basicBullet.setStrokeWeight(4);
    basicBullet.setFill(color(127));
  }
void buildBasicEnemy() {
    basicEnemyRadius = 40;
    basicEnemy = createShape();
    basicEnemy.beginShape();
    basicEnemy.noStroke();
    basicEnemy.strokeWeight(5);
    basicEnemy.vertex(-20,30);
    basicEnemy.vertex(20,30);
    basicEnemy.vertex(20,20);
    basicEnemy.vertex(40,0);
    basicEnemy.vertex(40,-20);
    basicEnemy.vertex(30,-30);
    basicEnemy.vertex(20,-30);
    basicEnemy.vertex(20,0);
    basicEnemy.vertex(10,0);
    basicEnemy.vertex(0,-10);
    basicEnemy.vertex(-10,0);
    basicEnemy.vertex(-20,0);
    basicEnemy.vertex(-20,-30);
    basicEnemy.vertex(-30,-30);
    basicEnemy.vertex(-40,-20);
    basicEnemy.vertex(-40,0);
    basicEnemy.vertex(-20,20);
    basicEnemy.vertex(-20,30);
    basicEnemy.endShape();
    basicEnemy.rotate(PI);
    basicEnemy.scale(.5);
  }
  
  void buildEnemyTwo() {
    enemyTwo = createShape(GROUP);
    fill(115,20,240); //purple
    PShape chassis = createShape(ELLIPSE, -90, -40, 180, 80);
    fill(20,200,255); //light blue
    PShape dome1 = createShape(ARC, -50, -15, 100, 30, 0, PI);
    PShape dome2 = createShape(ARC, -50, -50, 100, 100, PI, TWO_PI);
    enemyTwo.addChild(chassis);
    enemyTwo.addChild(dome1);
    enemyTwo.addChild(dome2);
    enemyTwo.scale(.3);
  }
}


