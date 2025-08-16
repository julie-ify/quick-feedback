import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["count"]
  animate(event) {
    const n = parseInt(this.countTarget.textContent || "0", 10)
    this.countTarget.textContent = n + 1
    this.countTarget.classList.add("animate-like")
    setTimeout(() => this.countTarget.classList.remove("animate-like"), 300)
  }
}



