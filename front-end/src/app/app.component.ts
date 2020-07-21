import {Component, OnInit} from '@angular/core';
import {forkJoin} from 'rxjs';

import {HeroesService} from '../services/heroes.service';
import {FormBuilder, FormControl, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})

export class AppComponent implements OnInit {
  public heroes: any = [];
  public powers: string[] = [
    'intelligence', 'strength', 'speed', 'durability', 'power', 'combat'
  ];
  public powerStats: FormGroup;

  constructor(
    private heroesService: HeroesService,
    private formBuilder: FormBuilder,
  ) {
    this.initForm();
  }

  ngOnInit(): void {
    forkJoin({
      heroes:  this.heroesService.getAll(),
    }).subscribe({
      next: ({ heroes }) => this.prepareHeroes(heroes),
      complete: () => {},
    });
  }

  private initForm() {
    this.powerStats = this.formBuilder.group({
      power: new FormControl('', [Validators.required]),
      value: new FormControl('', [Validators.maxLength(2)]),
    });
  }

  private prepareHeroes(heroes) {
    heroes.forEach(h => {
      h.biography = JSON.stringify({biography: h.biography}, undefined, 4);
      h.powerstats = JSON.stringify({powerstats: h.powerstats}, undefined, 4);
    });

    this.heroes = heroes;
  }

  public onClickSort(f) {
    let data;

    if (!f.value) {
      data = `?p=${f.power}`;
    } else {
      data = `?p=${f.power}&v=${f.value}`;
    }

    this.heroesService.sort(data).subscribe(d => this.prepareHeroes(d));
  }

  public onClickClear() {
    this.powerStats.reset();
    this.powerStats.markAsPristine();
    this.powerStats.markAsUntouched();
    this.initForm();
    this.heroesService.getAll().subscribe(d => this.prepareHeroes(d));
  }

  public onKyeDown(e) {
    const words = e.target.value;

    if (words?.length > 2) this.heroesService.sort(`?f=${words}`).subscribe(d => this.prepareHeroes(d));

    if ((e.key === 'Backspace' || e.key === 'Delete') && words?.length === 2) {
      this.heroesService.getAll().subscribe(d => this.prepareHeroes(d));
    }

  }
}
