var StringScrambler = function(str) {
    var _nameArr = str.split("") || [];
    var _origName = str || "";
    var shuffleArray = function ( myArray ) {
      var i = myArray.length;
      if ( i == 0 ) return false;
      while ( --i ) {
         var j = Math.floor( Math.random() * ( i + 1 ) );
         var tempi = myArray[i];
         var tempj = myArray[j];
         myArray[i] = tempj;
         myArray[j] = tempi;
       }
    };
    var scramble = function() {
        shuffleArray(_nameArr);
        return _nameArr.join("");
    };
    return {
        scramble: scramble
    };
};
