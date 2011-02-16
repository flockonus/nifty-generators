  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy
    redirect_to <%= items_url %>, :notice => "Deletado permanentemente."
  end
