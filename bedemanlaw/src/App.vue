<template>
  <img alt="BA logo" src="./assets/BAlogo2.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/>
  <div id="app">
      
  </div>
</template>

<script>
//import Clients from './components/Client'

export default {
  name: 'app',
  components: {
    //Clients
  }
  /* data(){
    return{
      clients:[
        {
          firstName: "Bruno",
          lastName: "Ross",
          contact: "0984567645",
          email: "bruno@gmail.com"
        },

        {
          firstName: "Kate",
          lastName: "Beckam",
          contact: "0846567645",
          email: "kate@gmail.com"
        },

        {
          firstName: "Paul",
          lastName: "Dylan",
          contact: "0673457645",
          email: "paul@gmail.com"
        }


      ]
    } */
  }

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
