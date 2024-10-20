<!--<template>-->
<!--  <div id="app">-->
<!--    <h1>税收计算器</h1>-->
<!--    <div>-->
<!--      <label for="numberInput">输入您的工资:</label>-->
<!--      <input type="number" id="numberInput" v-model.number="inputNumber" @input="calculateResult" />-->
<!--    </div>-->
<!--    <div>-->
<!--      <p>应缴税为: {{ result }}</p>-->
<!--    </div>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--export default {-->
<!--  name: 'App',-->
<!--  data() {-->
<!--    return {-->
<!--      inputNumber: 0, // 初始输入值为0-->
<!--      result: 0 // 初始结果值为0-->
<!--    };-->
<!--  },-->
<!--  methods: {-->
<!--    calculateResult() {-->
<!--      // 这里我们简单地将输入的数字乘以2-->
<!--      this.result = this.inputNumber * 2;-->
<!--    }-->
<!--  }-->
<!--};-->
<!--</script>-->

<!--<style>-->
<!--/* 添加一些简单的样式 */-->
<!--#app {-->
<!--  font-family: Avenir, Helvetica, Arial, sans-serif;-->
<!--  -webkit-font-smoothing: antialiased;-->
<!--  -moz-osx-font-smoothing: grayscale;-->
<!--  text-align: center;-->
<!--  color: #2c3e50;-->
<!--  margin-top: 60px;-->
<!--}-->

<!--label {-->
<!--  display: block;-->
<!--  margin-bottom: 10px;-->
<!--  font-weight: bold;-->
<!--}-->

<!--input {-->
<!--  width: 200px;-->
<!--  padding: 10px;-->
<!--  font-size: 16px;-->
<!--  margin-bottom: 20px;-->
<!--}-->

<!--p {-->
<!--  font-size: 18px;-->
<!--}-->
<!--</style>-->

<template>
  <div id="app">
    <h1>税收计算器</h1>
    <div>
      <label for="numberInput">输入您的工资:</label>
      <input type="number" id="numberInput" v-model.number="inputNumber" @input="calculateTax" />
    </div>
    <div>
      <p>应缴税为: {{ taxResult }}</p>
    </div>
    <div v-if="errorMessage">
      <p style="color: red;">{{ errorMessage }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      inputNumber: 0, // 初始输入值为0
      taxResult: 0, // 存储计算后的税值
      errorMessage: '' // 存储错误信息
    };
  },
  methods: {
    calculateTax() {
      // 清空之前的错误信息
      this.errorMessage = '';

      // 定义工资区间和对应的税率
      const startWages = [80000, 60000, 40000, 30000, 17000, 8000, 5000, 0];
      const taxRates = [0.45, 0.35, 0.30, 0.25, 0.20, 0.10, 0.03, 0.00];

      // 检查输入的工资是否合理
      if (this.inputNumber <=0) {
        this.errorMessage = '不合理的工资';
        this.taxResult = 0;
        return;
      }

      // 找出工资区间
      let wagesLevel=0;
      for(let i=0;i<startWages.length;i++){
        if(this.inputNumber<startWages[i]){
          wagesLevel=i+1;
        }
      }

      // 计算税额
      // 注意：这里为了简化，我们假设工资是全额计税，不考虑免税额、起征点等复杂情况
      // 实际情况中，可能需要更复杂的逻辑来处理不同的税率区间和累进税制
      // this.taxResult = this.inputNumber * taxRates[wagesLevel];
      this.taxResult=this.inputNumber *taxRates[wagesLevel]
    }
  }
};
</script>

<style>
/* 添加一些简单的样式 */
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
}

input {
  width: 200px;
  padding: 10px;
  font-size: 16px;
  margin-bottom: 20px;
}

p {
  font-size: 18px;
}
</style>
