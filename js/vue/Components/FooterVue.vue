var nav = Vue.component('footerglobal', {
    data: function () {
        return {

            NameCompany: 'Fundación Universitaria San Mateo © 2019',
            Desarrollado: 'Fabian Obando, Juan Sandoval'

        }
    },
    template: `
            <div class="footer py-3">
               <footer>
                <p class="col-sm-12 col-md-12 text-center text-white">{{NameCompany}}</p>
                <p class="col-sm-12 col-md-12  text-center text-white">{{Desarrollado}}</p>
             </footer>
            </div>
  `
});