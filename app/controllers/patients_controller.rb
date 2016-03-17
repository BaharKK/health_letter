class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def show 
    @list = ["Psoriasis", "inflammatory bowel disease", "hair loss", "sicca symptoms", "renal disease", "raynaud's", "malar rash or photo sensitivity", "recurrent mouth ulcers", "DVT or PE", "shortness of breath or unexplained chest pain", "iritis"]
    @vasculitis_list = ["bronchial asthma", "increased eosinophil count","nose bleeds","paresthesia","sinusitis"]
    @myositis_list = ["weakness","dysphagia","dysphonia"]
    @fibromyalgia_list = ["non restorative sleep","excessive fatigue","wide spread pain","IBS"]
    @examination_list= ["rash","lymphadenopathy","sclerodactyly","tophi"]
    @symptom_list = ["MCP","PIP","DIP","1st CMC","wrist","elbow","shoulder","hip","knee","ankle","MTP"]
    @family_list = ["SLE","osteoarthritis","rheumatoid arthritis","psoriasis","IBD","uveitis"]
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
    @additional_details = params[:additional_details]
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
    @vasculitis = params[:vasculitis] || []
    @non_vasculitis = @vasculitis_list - @vasculitis  
    if @non_vasculitis.any? == false 
      @vasculitis_full = true
    end
    if @non_vasculitis.length > 1 
      @non_vasculitis_last = @non_vasculitis.pop
    else
      @non_vasculitis_last= nil
    end
    if @vasculitis.length > 1
      @vasculitis_last = @vasculitis.pop
    else
      @vasculitis_last = nil 
    end
    @myositis = params[:myositis] || []
    @non_myositis = @myositis_list - @myositis
     if @non_myositis.any? == false 
      @myositis_full = true
    end
    if @non_myositis.length > 1
      @non_myositis_last = @non_myositis.pop
    else
      @non_myositis_last = nil
    end
    if @myositis.length > 1
      @myositis_last = @myositis.pop
    else
      @myositis_last = nil
    end
    
    @fibromyalgia = params[:fibromyalgia] || []
    @non_fibromyalgia = @fibromyalgia_list - @fibromyalgia
    if @non_fibromyalgia.any? == false 
      @fibromyalgia_full = true
    end
    if @non_fibromyalgia.length > 1
      @non_fibromyalgia_last = @non_fibromyalgia.pop
    else
      @non_fibromyalgia_last = nil
    end
    if @fibromyalgia.length > 1
      @fibromyalgia_last = @fibromyalgia.pop
    else
      @fibromyalgia_last = nil
    end
    
    @examination = params[:examination] || []
    @non_examination = @examination_list - @examination
    if @non_examination.any? == false 
      @examination_full = true
    end
    if @non_examination.length > 1
      @non_examination_last = @non_examination.pop
    else
      @non_examination_last = nil
    end
    if @examination.length > 1
      @examination_last = @examination.pop
    else
      @examination_last = nil
    end
    @MCP_examination = params[:MCP_examination]
    @MCP_swelling = params[:MCP_swelling]
    @MCP_tenderness = params[:MCP_tenderness]
    @PIP_swelling = params[:PIP_swelling]
    @PIP_tenderness = params[:PIP_tenderness]
    @PIP_examination = params[:PIP_examination]
    @DIP_swelling = params[:DIP_swelling]
    @DIP_tenderness = params[:DIP_tenderness]
    @DIP_examination = params[:DIP_examination]
    @CMC_swelling = params[:CMC_swelling]
    @CMC_tenderness = params[:CMC_tenderness]
    @CMC_examination = params[:CMC_examination] 
    @wrist_swelling = params[:wrist_swelling]
    @wrist_tenderness = params[:wrist_tenderness]
    @wrist_examination = params[:wrist_examination]
    @elbow_swelling = params[:elbow_swelling]
    @elbow_tenderness = params[:elbow_tenderness]
    @elbow_examination = params[:elbow_examination]
    @shoulder_swelling = params[:shoulder_swelling]
    @shoulder_tenderness = params[:shoulder_tenderness]
    @shoulder_examination = params[:shoulder_examination] 
    @knee_swelling = params[:knee_swelling]
    @knee_tenderness = params[:knee_tenderness]
    @knee_examination = params[:knee_examination] 
    @ankle_swelling = params[:ankle_swelling]
    @ankle_tenderness = params[:ankle_tenderness]
    @ankle_examination = params[:ankle_examination]
    @MTP_swelling = params[:MTP_swelling]
    @MTP_tenderness = params[:MTP_tenderness]
    @MTP_examination = params[:MTP_examination] 
    @hip_examination = params[:hip_examination]
    @spine_examination = params[:spine_examination]
    @smoke = params[:smokes]
    @smoke_detail = params[:smoke_detail]
    @alcohol = params[:alcohol]
    @alcohol_detail = params[:alcohol_detail]
    @drugs = params[:drugs]
    @drug_detail = params[:drug_detail]
    @occupation = params[:occupation]
    
    @family = params[:family] || []
    @non_family = @family_list - @family
    if @non_family.any? == false 
      @family_full = true
    end
    if @family_list.length > 1
      @non_family_last = @non_family.pop
    else
      @non_family_last = nil
    end
    if @family.length > 1
      @family_last = @family.pop
    else
      @family_last = nil
    end
    @family_details = params[:family_details]
  end
  

end