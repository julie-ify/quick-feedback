import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.classList.add("flash")
    setTimeout(() => this.element.classList.remove("flash"), 400)
  }
}
