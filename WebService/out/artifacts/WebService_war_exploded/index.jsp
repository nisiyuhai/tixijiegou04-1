<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>WebService服务器--赵振伸</title>
  <style>
    body {
      background-image: url('background.jpg');
      background-size: cover;
      display: flex;
      justify-content: center; /* 修改为center以水平居中 */
      align-items: center; /* 已经是center，用于垂直居中 */
      height: 100vh;
      margin: 0;
      color: #333;
      text-align: center; /* 可选：让整个页面的文本内容居中 */
    }
    .container {
      background-color: rgba(255, 255, 255, 0.8);
      padding: 20px;
      border-radius: 10px;
      width: 50%; /* 调整宽度，或根据需要设置max-width */
      max-width: 600px; /* 限制最大宽度 */
      margin: 0 auto; /* 添加以居中 */
      text-align: center; /* 如果不希望容器内文本居中，可以设置为left */
    }
    h1, p, ul {
      margin: 0;
      padding: 10px 0;
    }
    ul {
      list-style-type: none;
      padding: 0;
      text-align: center; /* 列表项居中 */
    }
    li {
      margin: 10px 0;
    }
    .button, .link-button {
      display: inline-block; /* 修改为inline-block以适应内容宽度 */
      margin: 10px;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      text-decoration: none;
      color: white; /* 仅适用于.button */
      background-color: #4CAF50; /* 仅适用于.button */
      border: none;
      border-radius: 5px;
      text-align: center;
    }
    .button:hover {
      background-color: #45a049;
    }
    .link-button {
      color: black; /* 链接按钮颜色 */
      background-color: transparent; /* 链接按钮背景 */
    }
  </style>
</head>
<body>
<div class="container">
  <h1>实验四  任务一  服务器  赵振伸</h1>
  <p>本服务器现仅提供税收计算。</p>
  <a class="link-button" href="http://localhost:8080/services;">点击进入</a>
  <ul>
    <li><a class="button" href="http://localhost:8080/services/CalTax?wsdl">CalTax (wsdl)</a></li>
    <li><a class="button" href="http://localhost:8081/#/">进入税收计算器</a></li>
  </ul>
</div>
</body>
</html>