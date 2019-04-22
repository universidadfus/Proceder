var app = new Vue({
  el: '#app',
  data: {

  	//Menu
    categoria1: 'Unidad de Atención al Estudiante',
    categoria2: 'Bienestar Institucional',
    categoria3: 'Programa de Permanencia',
    categoria4: 'Centro de Lenguas',
    categoria5: 'Gestión Humana',
    cateseleccion: ''
  },
  methods: {
    selecategoria1: function () {
    this.cateseleccion = this.categoria1;
  },
    selecategoria2: function () {
    this.cateseleccion = this.categoria2
  },
    selecategoria3: function () {
    this.cateseleccion = this.categoria3
  },

    selecategoria4: function () {
    this.cateseleccion = this.categoria4
  },
    selecategoria5: function () {
    this.cateseleccion = this.categoria5
  }

}
})