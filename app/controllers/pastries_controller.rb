class PastriesController < ApplicationController
  def index
  	@pastries = [{
  		name: "Croissant",
  		price_in_pence: 350,
  		description: " This traditional French pastry has a high real butter component, with lovely, light flaky layers of pastry"
  		},
  		{
  			name: "Pain au Chocolat",
  			price_in_pence: 380,
  			description: "Pain au chocolat also called a chocolatine in the south-west of France (from Occitan chocolatina)"
  			}]
  end

  def show
  	@pastry = {
  		name: "Croissant",
  		price_in_pence: 350,
  		description: " This traditional French pastry has a high real butter component, with lovely, light flaky layers of pastry"
  	}
  end

  def new
  end

  def edit
  end
end
