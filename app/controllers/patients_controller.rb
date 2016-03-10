class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def show 
    @list = ["Psoriasis", "inflammatary bowel disease", "hair loss", "dry eyes or dry mouth", "kidney problems", "Raynaud's", "rash on face or rash when exposed to sun light", "recurrent mouth ulcers", "blood clots in legs or lungs", "shortness of breath or unxplained chest pain", "painfull red eyes (uveitis or Iritis)"]
    @patient = params[:name]
    @main_complaint = params[:main_complaint]
    @since_how_long = params[:since_how_long]
    @gender = params[:gender]
    @pains = params[:pains] || []
    if @pains.length > 1 
      @pain_last = @pains.pop
    else
      @pain_last = nil 
    end
    @swellings = params[:swellings] || []
    if @swellings.length > 1 
      @swell_last = @swellings.pop
    else 
      @swell_last = nil
    end
    @morning_stiffness = params[:morning_stiffness]
    @morning_stiffness_duration = params[:morning_stiffness_duration]
    @diseases = params[:disease] || []
    @non_diseases = @list - @diseases 
    if @diseases.length > 1 
      @diseases_last = @diseases.pop 
    else
      @diseases_last = nil
    end
    if @non_diseases.length > 1
      @non_diseases_last = @non_diseases.pop
    else
      @non_diseases_last = nil
    end
    @pain_options = params[:options] || []
  end


end