class CounterData {
  int leftUp;
  int leftDown;
  int rightUp;
  int rightDown;
  bool leftUpActive;
  bool leftDownActive;
  bool rightUpActive;
  bool rightDownActive;
  int totalCount;
  int oldCount;

  CounterData({
    this.leftUp = 0,
    this.leftDown = 0,
    this.rightUp = 0,
    this.rightDown = 0,
    this.totalCount = 0,
    this.oldCount = 0,
    this.leftUpActive = false,
    this.leftDownActive = false,
    this.rightDownActive = false,
    this.rightUpActive = false,
  });
}

CounterData data =
    CounterData(leftUp: 0, leftDown: 0, rightDown: 0, rightUp: 0,oldCount: 0);
