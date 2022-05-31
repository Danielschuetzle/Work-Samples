import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Drama", "Classic", "Comedy", "Action", "Romantic", "Thriller", "Horror", "Slasher"],
      typeSpeed: 40,
      loop: true,
      loopCount: Infinity,
      showCursor: false
    });
  }
}
