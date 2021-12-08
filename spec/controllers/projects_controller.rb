#Projects Controller
class ProjectsController < ApplicationController
    before_action :set_project, only: %i[ show edit update destroy ]
    before_action :authenticate_user!

    #GET /projects or /projects.json
    def index
        @projects = Project.all
    end
    