import {Component, OnInit} from '@angular/core';

import {HeroesService} from '../services/heroes.service';
import {forkJoin} from "rxjs";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})

export class AppComponent implements OnInit {
  public heroes: any = [];

  constructor(
    private heroesService: HeroesService,
  ) { }

  ngOnInit(): void {
    forkJoin({
      heroes:  this.heroesService.getAll(),
    }).subscribe({
      next: ({ heroes }) => {
        this.heroes = heroes;
        this.heroes.forEach(h => {
          h.biography = JSON.stringify({biography: h.biography}, undefined, 4);
          h.powerstats = JSON.stringify({powerstats: h.powerstats}, undefined, 4);
        });
      },
      complete: () => {},
    });
  }
}
