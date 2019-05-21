require 'rails_helper'

RSpec.describe DocumentsController, type: :controller do
  describe 'GET #index' do
    subject { get :index }
    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:index) }
  end

  describe 'GET #new' do
    subject { get :new }
    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:new) }
  end

  describe 'POST #create' do
    let(:params) { { document: { title: 'test title', body: 'lorem ipsum' } } }
    subject { post :create, params: params }
    it { is_expected.to have_http_status(302) }
    it { is_expected.to redirect_to(action: :show, id: Document.last.id) }
  end

  describe 'GET #show' do
    let(:document) { Document.create title: "test title", body: "lorem ipsum" }
    subject { get :show, params: { id: document.id } }
    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:show) }
  end

  describe 'GET #edit' do
    let(:document) { Document.create title: "test title", body: "lorem ipsum" }
    subject { get :edit, params: { id: document.id } }
    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:edit) }
  end

  describe 'PATCH #update' do
    let(:document) { Document.create title: "test title", body: "lorem ipsum" }
    let(:params) { { document: { title: "new title" } } }
    subject { patch :update, params: { id: document.id, **params } }
    it { is_expected.to have_http_status(302) }
    it { is_expected.to redirect_to(action: :show, id: document.id) }
  end

  describe 'DELETE #destroy' do
    let(:document) { Document.create title: "test title", body: "lorem ipsum" }
    subject { delete :destroy, params: { id: document.id } }
    it { is_expected.to have_http_status(302) }
    it { is_expected.to redirect_to(action: :index) }
  end
end
