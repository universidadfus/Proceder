var nav = Vue.component('footerglobal', {
    data: function () {
        return {
            NameCompany: 'Fundación Universitaria San Mateo © 2019',
            Desarrollado: 'Fabian Obando, Juan Sandoval'

        }
    },
    template: `
            <div class="container-fluid bg-dark py-4 " style="bottom:0px">
               </footer>
                <p class="col-md-12 text-center text-white">{{NameCompany}}</p>
                <p class="col-md-12  text-center text-white">{{Desarrollado}}</p>
             </footer>
            </div>
  `
});