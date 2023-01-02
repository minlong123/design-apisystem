function getRandomCode(length=32) {
    if (length > 0) {
       var data = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
       var nums = "";
       for (var i = 0; i < length; i++) {
          var r = parseInt(Math.random() * 61);
          nums += data[r];
       }
       return nums;
    }
 }


 /**
 * 使用canvas
 * @param {String} text 文本
 * @param {String} font 字体 如 'normal 12px Arial'
 */
function getTextWidth(text, font) {
   const canvas = getTextWidth.canvas || (getTextWidth.canvas = document.createElement("canvas"))
   const context = canvas.getContext("2d")
   context.font = font
   const metrics = context.measureText(text)
   return metrics.width
 }
  