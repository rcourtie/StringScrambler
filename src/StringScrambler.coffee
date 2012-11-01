window.StringScrambler = (str) ->
  nameArr = str.split("") ? []
  origName = str ? ""
  history = [str]
  swapTwoRandomArrayValues = (array, i) ->
    j = Math.floor(Math.random() * (i + 1) )
    tempi = array[i]
    tempj = array[j]
    array[i] = tempj
    array[j] = tempi

  shuffleArray = (myArray) ->
    i = myArray.length
    return false if i == 0
    swapTwoRandomArrayValues(myArray, i) while( --i)

  scramble = -> 
    shuffleArray nameArr
    history.push nameArr.join ""
    return nameArr.join ""

  dupHistory = ->
    locHistory = []
    locHistory.push(s) for s in history
    locHistory

  return {
    getHistory: dupHistory
    scramble: scramble
  }
