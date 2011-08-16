class AdvisorsController < ApplicationController
  # GET /advisors
  # GET /advisors.xml
  def index
    @advisors = Advisor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advisors }
    end
  end

  # GET /advisors/1
  # GET /advisors/1.xml
  def show
    @advisor = Advisor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advisor }
    end
  end

  # GET /advisors/new
  # GET /advisors/new.xml
  def new
    @advisor = Advisor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advisor }
    end
  end

  # GET /advisors/1/edit
  def edit
    @advisor = Advisor.find(params[:id])
  end

  # POST /advisors
  # POST /advisors.xml
  def create
    @advisor = Advisor.new(params[:advisor])

    respond_to do |format|
      if @advisor.save
        format.html { redirect_to(@advisor, :notice => 'Advisor was successfully created.') }
        format.xml  { render :xml => @advisor, :status => :created, :location => @advisor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advisor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advisors/1
  # PUT /advisors/1.xml
  def update
    @advisor = Advisor.find(params[:id])

    respond_to do |format|
      if @advisor.update_attributes(params[:advisor])
        format.html { redirect_to(@advisor, :notice => 'Advisor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advisor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advisors/1
  # DELETE /advisors/1.xml
  def destroy
    @advisor = Advisor.find(params[:id])
    @advisor.destroy

    respond_to do |format|
      format.html { redirect_to(advisors_url) }
      format.xml  { head :ok }
    end
  end
end
