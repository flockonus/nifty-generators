  def create
    @<%= instance_name %> = <%= class_name %>.new(params[:<%= instance_name %>])
    if @<%= instance_name %>.save
      redirect_to <%= item_path :instance_variable => true %>, :notice => "Cadastrado com Sucesso!"
    else
      render :action => 'new'
    end
  end
